package com.Desafio.Modelo.de.dominio.e.ORM.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "tb_participante_atividade")
public class Atividade_Participante {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "participante_id")
    private Participante participante;

    @ManyToOne
    @JoinColumn(name = "atividade_id")
    private Atividade atividade;


}
