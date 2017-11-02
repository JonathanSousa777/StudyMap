package com.studymap.controller;

import com.studymap.model.Video;
import com.studymap.repository.Videos;
import com.studymap.util.jsf.FacesUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;

@Named
@ViewScoped
public class SugestaoVideoBean implements Serializable {

    @Inject
    private Videos videos;

    private List<Video> listaVideos;

    public SugestaoVideoBean() {
        listaVideos = new ArrayList<>();
    }

    public void inicializar() {
        listaVideos = videos.todos();
    }

    public void negar() {
        FacesUtil.addMessage("Aconselho você ir se concentrar!");
    }

    public List<Video> getListaVideos() {
        return listaVideos;
    }
}
