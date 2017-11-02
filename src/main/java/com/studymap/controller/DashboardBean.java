package com.studymap.controller;

import com.studymap.model.DiaSemana;
import com.studymap.model.RotinaDiaria;
import com.studymap.repository.RotinasDiaria;
import java.io.Serializable;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;

@Named
@ViewScoped
public class DashboardBean implements Serializable {

    @Inject
    private RotinasDiaria rotinasDiaria;

    private int tarefaRestantes;
    private List<RotinaDiaria> listConcluidas;
    private List<RotinaDiaria> listTodasTarefas;
    DayOfWeek hojeDate;
    DiaSemana hoje;
    private int quantidadeTarefasRestantes;
    private int quantidadeTarefasConcluidas;
    private int quantidadeTodasTarefas;

    public DashboardBean() {
        listConcluidas = new ArrayList<>();
        listTodasTarefas = new ArrayList<>();
        hojeDate = LocalDate.now().getDayOfWeek();
        hoje = capturarDiaSemanaHoje(hojeDate);
    }

    public void inicializar() {
        listConcluidas = rotinasDiaria.porConclusao(hoje);
        quantidadeTarefasConcluidas = listConcluidas.size();

        listTodasTarefas = rotinasDiaria.porDia(hoje);
        quantidadeTodasTarefas = listTodasTarefas.size();

        quantidadeTarefasRestantes = quantidadeTodasTarefas - quantidadeTarefasConcluidas;
    }

    public DiaSemana capturarDiaSemanaHoje(DayOfWeek hoje) {
        for (DiaSemana diaSemana : DiaSemana.values()) {
            if (diaSemana.toString() == hoje.toString()) {
                return diaSemana;
            }
        }
        return null;
    }

    public int getQuantidadeTarefasRestantes() {
        return quantidadeTarefasRestantes;
    }

    public int getQuantidadeTarefasConcluidas() {
        return quantidadeTarefasConcluidas;
    }

    public int getQuantidadeTodasTarefas() {
        return quantidadeTodasTarefas;
    }
}
