package com.Desafio.Modelo.de.dominio.e.ORM.entities;


import jakarta.persistence.*;

@Entity
@Table(name = "tb_participantes")
public class Participante {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    @Column(unique = true)
    private String email;


}
