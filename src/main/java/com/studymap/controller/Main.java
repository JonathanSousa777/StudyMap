package com.studymap.controller;

import java.util.Date;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Main {

    public static void main(String[] args) {
        Date date = new Date();
        System.out.println(String.valueOf(date).substring(11, 19));
    }
}
