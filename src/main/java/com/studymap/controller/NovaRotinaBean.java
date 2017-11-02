package com.studymap.controller;

import com.studymap.model.DiaSemana;
import com.studymap.model.RotinaDiaria;
import com.studymap.repository.RotinasDiaria;
import com.studymap.service.RotinaDiariaService;
import com.studymap.util.jsf.FacesUtil;
import java.io.Serializable;
import java.util.Date;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;

@Named
@ViewScoped
public class NovaRotinaBean implements Serializable {

    @Inject
    private RotinasDiaria rotinasDiaria;

    @Inject
    private RotinaDiariaService rotinaDiariaService;

    private RotinaDiaria rotinaDiaria;
    private Date horaInicial;

    public NovaRotinaBean() {
        limpar();
    }

    public void salvar() {
        Date horaAjustada = new Date(horaInicial.getTime() - 3 * 60 * 1000 * 60);
        this.rotinaDiaria.setHoraInicial(horaAjustada);
        this.rotinaDiaria = rotinaDiariaService.salvar(this.rotinaDiaria);
        limpar();

        FacesUtil.addMessage("Rotina salva com sucesso!");
    }

    public DiaSemana[] getTodosDiasSemana() {
        return DiaSemana.values();
    }

    private void limpar() {
        rotinaDiaria = new RotinaDiaria();
    }

    public RotinaDiaria getRotinaDiaria() {
        return rotinaDiaria;
    }

    public void setRotinaDiaria(RotinaDiaria rotinaDiaria) {
        this.rotinaDiaria = rotinaDiaria;
    }

    public Date getHoraInicial() {
        return horaInicial;
    }

    public void setHoraInicial(Date horaInicial) {
        this.horaInicial = horaInicial;
    }
}
