package com.studymap.repository;

import com.studymap.model.Video;
import java.io.Serializable;
import java.util.List;
import javax.inject.Inject;
import javax.persistence.EntityManager;

public class Videos implements Serializable {

    @Inject
    EntityManager manager;

    public List<Video> todos() {
        return manager.createQuery("from Video").getResultList();
    }
}
