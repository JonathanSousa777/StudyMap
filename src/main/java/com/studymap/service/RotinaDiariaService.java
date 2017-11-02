package com.studymap.service;

import com.studymap.model.RotinaDiaria;
import com.studymap.repository.RotinasDiaria;
import com.studymap.util.jpa.Transactional;
import java.io.Serializable;
import javax.inject.Inject;

public class RotinaDiariaService implements Serializable {

    @Inject
    private RotinasDiaria rotinasDiaria;

    @Transactional
    public RotinaDiaria salvar(RotinaDiaria rotinaDiaria) {
        RotinaDiaria rotinaDiariaExistente = rotinasDiaria.porHorario(rotinaDiaria.getDiaSemana(), rotinaDiaria.getHoraInicial());

        if (rotinaDiariaExistente != null && !rotinaDiariaExistente.equals(rotinaDiaria)) {
            throw new NegocioException("Já existe uma tarefa para esse dia e essa hora!");
        }
        return rotinasDiaria.guardar(rotinaDiaria);
    }

}
