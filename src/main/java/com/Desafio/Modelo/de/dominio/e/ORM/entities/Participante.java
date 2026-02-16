package com.Desafio.Modelo.de.dominio.e.ORM.entities;


import jakarta.persistence.*;

@Entity
@Table(name = "tb_participantes")
public class Participante {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String nome;

    @Column(unique = true)
    private String email;


    @ManyToOne(optional = false)
    @JoinColumn(name = "atividades_id")
    private Atividade atividades;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Atividade getAtividades() {
        return atividades;
    }

    public void setAtividades(Atividade atividades) {
        this.atividades = atividades;
    }

    public Participante(Integer id, String nome, String email, Atividade atividades) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.atividades = atividades;
    }

    public Participante() {
    }
}
