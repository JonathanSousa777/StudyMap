package com.studymap.model;

import java.io.Serializable;

public enum DiaSemana implements Serializable {
    MONDAY("Segunda Feira"),
    TUESDAY("Terça Feira"),
    WEDNESDAY("Quarta Feira"),
    THURSDAY("Quinta Feira"),
    FRIDAY("Sexta Feira"),
    SATURDAY("Sábado"),
    SUNDAY("Domingo");

    private String descricao;

    private DiaSemana(String descricao) {
        this.descricao = descricao;
    }

    public String getDescricao() {
        return descricao;
    }
}
