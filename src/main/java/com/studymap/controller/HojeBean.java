package com.studymap.controller;

import com.studymap.model.DiaSemana;
import com.studymap.model.RotinaDiaria;
import com.studymap.repository.RotinasDiaria;
import com.studymap.service.RotinaDiariaService;
import com.studymap.util.jsf.FacesUtil;
import java.io.Serializable;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;

@Named
@ViewScoped
public class HojeBean implements Serializable {

    @Inject
    private RotinasDiaria rotinasDiaria;

    @Inject
    private RotinaDiariaService rotinaDiariaService;

    private RotinaDiaria rotinaDiariaSelecionada;
    List<RotinaDiaria> listaRotinasDiaria;
    DayOfWeek hojeDate;
    DiaSemana hoje;

    public HojeBean() {
        listaRotinasDiaria = new ArrayList<>();
        rotinaDiariaSelecionada = new RotinaDiaria();
        hojeDate = LocalDate.now().getDayOfWeek();
        hoje = capturarDiaSemanaHoje(hojeDate);
    }

    public void inicializar() {
        listaRotinasDiaria = rotinasDiaria.porDia(hoje);
        rotinaDiariaSelecionada = new RotinaDiaria();
    }

    public void concluirTarefa() {
        rotinaDiariaSelecionada.setConcluida(true);
        rotinaDiariaSelecionada = rotinaDiariaService.salvar(rotinaDiariaSelecionada);
        Date horaFinalizacao = new Date(rotinaDiariaSelecionada.getHoraInicial().getTime() + rotinaDiariaSelecionada.getDuracao() * 60 * 1000);
        Date horaFinalizacaoMessage = new Date(horaFinalizacao.getTime() + 3 * 60 * 1000 * 60);

        FacesUtil.addMessage("Essa tarefa terminará ás: " + String.valueOf(horaFinalizacaoMessage).substring(11, 19));
        inicializar();
    }

    public void finalizarDia() {
        for (RotinaDiaria rotinaDiaria : listaRotinasDiaria) {
            rotinaDiaria.setConcluida(false);

            rotinaDiariaService.salvar(rotinaDiaria);
        }
        
        FacesUtil.addMessage("Até amanhã!");
    }

    public List<RotinaDiaria> getListaRotinasDiaria() {
        return listaRotinasDiaria;
    }

    public DiaSemana capturarDiaSemanaHoje(DayOfWeek hoje) {
        for (DiaSemana diaSemana : DiaSemana.values()) {
            if (diaSemana.toString() == hoje.toString()) {
                return diaSemana;
            }
        }

        return null;
    }

    public DiaSemana getHoje() {
        return hoje;
    }

    public RotinaDiaria getRotinaDiariaSelecionada() {
        return rotinaDiariaSelecionada;
    }

    public void setRotinaDiariaSelecionada(RotinaDiaria rotinaDiariaSelecionada) {
        this.rotinaDiariaSelecionada = rotinaDiariaSelecionada;
    }
}
