package com.codingdojo.demo.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.demo.modelos.Publicacion;
import com.codingdojo.demo.modelos.Usuario;
import com.codingdojo.demo.servicios.Servicio;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorPublicaciones {

	@Autowired
	public Servicio servicio;
	
	@GetMapping("/dashboard")
	public String dashboard(HttpSession session,Model model)  {
		
		
		Usuario usuarioTemporal = (Usuario)session.getAttribute("usuarioEnSesion");
			if(usuarioTemporal == null) {
				return "redirect:/";
			}
				
		List<Publicacion> publicaciones = servicio.mostrarPublicaciones(usuarioTemporal);
		model.addAttribute("publicaciones", publicaciones);
		return "dashboard.jsp";
	}
	
	@GetMapping("/nueva/publicacion")
	public String nuevaPubli(HttpSession session,Model model) {
		
		Usuario usuarioTemporal = (Usuario)session.getAttribute("usuarioEnSesion");
		if(usuarioTemporal == null) {
			return "redirect:/";
		}
		model.addAttribute("nuevaPublicacion");
		
		return "crearPublicacion.jsp";
	}


	@PostMapping("/crearpublicacion")
	public String crearPublicacion(HttpSession session, @Valid @ModelAttribute("nuevaPublicacion")Publicacion nuevaPublicacion,
									BindingResult result,
									Model model){
		
		Usuario usuarioTemporal = (Usuario)session.getAttribute("usuarioEnSesion");
		if(usuarioTemporal == null) {
			return "redirect:/";
		}
		
		if(result.hasErrors()) {
			return "crearPublicacion.jsp";
		}else {
			nuevaPublicacion.setHost(usuarioTemporal);
			servicio.guardarPublicacion(nuevaPublicacion);
			model.addAttribute("nuevaPublicacion", nuevaPublicacion);
			return "redirect:/dashboard";
		}
	}
	
}
