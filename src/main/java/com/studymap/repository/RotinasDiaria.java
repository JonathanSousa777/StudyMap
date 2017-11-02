package com.studymap.repository;

import com.studymap.model.DiaSemana;
import com.studymap.model.RotinaDiaria;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

public class RotinasDiaria implements Serializable {

    @Inject
    private EntityManager manager;

    public List<RotinaDiaria> porDia(DiaSemana diaSemana) {
        Session session = manager.unwrap(Session.class);
        Criteria criteria = session.createCriteria(RotinaDiaria.class);

        criteria.add(Restrictions.eq("diaSemana", diaSemana));
        return (List<RotinaDiaria>) criteria.addOrder(Order.asc("horaInicial")).list();
    }

    public RotinaDiaria porHorario(DiaSemana diaSemana, Date horaInicial) {
        Session session = manager.unwrap(Session.class);
        Criteria criteria = session.createCriteria(RotinaDiaria.class);

        criteria.add(Restrictions.eq("diaSemana", diaSemana));
        criteria.add(Restrictions.eq("horaInicial", horaInicial));

        return (RotinaDiaria) criteria.uniqueResult();
    }

    public RotinaDiaria guardar(RotinaDiaria rotinaDiaria) {
        return manager.merge(rotinaDiaria);
    }

    public List<RotinaDiaria> porConclusao(DiaSemana diaSemana) {
        Session session = manager.unwrap(Session.class);
        Criteria criteria = session.createCriteria(RotinaDiaria.class);

        criteria.add(Restrictions.eq("diaSemana", diaSemana));
        criteria.add(Restrictions.eq("concluida", true));

        return criteria.list();
    }
}
