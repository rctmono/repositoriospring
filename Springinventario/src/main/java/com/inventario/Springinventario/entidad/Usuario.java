package com.inventario.Springinventario.entidad;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity      //notacion de entidad representación de información  necesitamos
@Table(name = "usuarios") //crea una tabla llamada usuarios
public class Usuario {

	@Id //clave primaria de la entidad
	@GeneratedValue(strategy = GenerationType.IDENTITY)//generacion de la llave
	private Long id;
	
	@Column(name = "nombre",nullable = false,length = 50) //crea la columna nombre que puede estar vacia  dimension de 50 caracteres
	private String nombre;
	
	@Column(name = "apellido",nullable = false,length = 50)//crea la columna apellido que puede estar vacia  dimension de 50 caracteres
	
	private String apellido;
	
	@Column(name = "correo",nullable = false,length = 50,unique = true)//crea la columna correo que puede estar vacia  dimension de 50 caracteres con la condicion de que sea unico el valor
	
	private String correo;
	
	//constructor vacio 
	public Usuario() {
		
	}

	//contructores
	public Usuario(Long id, String nombre, String apellido, String correo) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.correo = correo;
	}
	
	public Usuario( String nombre, String apellido, String correo) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.correo = correo;
	}
	
	//getters y setters

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	// convierte cualquier objeto en un String si es necesario
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", correo=" + correo + "]";
	}
	
	
}
    
    
    
    
    
    
    


