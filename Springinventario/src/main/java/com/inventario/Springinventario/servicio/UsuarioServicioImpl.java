package com.inventario.Springinventario.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inventario.Springinventario.entidad.Usuario;
import com.inventario.Springinventario.repositorio.UsuarioRepositorio;

@Service //servico para el repositorio de consulta
public class UsuarioServicioImpl implements UsuarioServicio { //clase implementada tipo interface
	//meotodos abstraptos
	@Autowired //inyeccion del repositorio UsuarioRepositorio
	private UsuarioRepositorio repositorio;

	@Override
	public List<Usuario> listarTodosLosUsuarios() {
		return repositorio.findAll();
	}

	@Override
	public Usuario guardarUsuario(Usuario usuario) {
		return repositorio.save(usuario);
	}

	@Override
	public Usuario obtenerUsuarioPorId(Long id) {
		return repositorio.findById(id).get();
	}

	@Override
	public Usuario actualizarUsuario(Usuario usuario) {
		return repositorio.save(usuario);
	}

	@Override
	public void eliminarUsuario(Long id) {
		repositorio.deleteById(id);

	}

}