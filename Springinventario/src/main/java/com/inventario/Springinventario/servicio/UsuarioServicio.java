
package com.inventario.Springinventario.servicio;

//interface de la aplicacion

import java.util.List;

import com.inventario.Springinventario.entidad.Usuario;

public interface UsuarioServicio {

	//metodos de la interface usuarioServicio
	
	public List<Usuario> listarTodosLosUsuarios();  //lista los usuarios
	
	public Usuario guardarUsuario(Usuario usuario);//guarda el usuario
	
	public Usuario obtenerUsuarioPorId(Long id); //cunsulta el usuario
	
	public Usuario actualizarUsuario(Usuario usuario);//modificael usuario
	
	public void eliminarUsuario(Long id); //elimina el usuario
}