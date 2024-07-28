/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.inventario.Springinventario.repositorio;

import com.inventario.Springinventario.entidad.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Raul Cardenas Triana
 */

@Repository //repositorio usado por la interface UsuarioServicioImpl
//Jpa tiene todos los metodos borrar agregar editar guardar ...
public interface UsuarioRepositorio extends JpaRepository <Usuario, Long> { //hereda de Jparepository herada la clase de identidad estudiante detipo long
    
}



