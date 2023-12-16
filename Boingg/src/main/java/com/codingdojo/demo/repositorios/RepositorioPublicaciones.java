package com.codingdojo.demo.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.demo.modelos.Publicacion;
import com.codingdojo.demo.modelos.Usuario;

public interface RepositorioPublicaciones extends CrudRepository<Publicacion, Long>{
	public List<Publicacion> findByHost(Usuario host);
}
