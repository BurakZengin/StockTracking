/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.service;

import com.stoktakip.dao.KasaDAO;
import com.stoktakip.domain.Kasa;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Elidor
 */
@Service
public class KasaServiceImpl implements KasaService {

    @Autowired
    private KasaDAO kasaDAO;

    public void save(Kasa u) {
        kasaDAO.save(u);
    }

    public void update(Kasa u) {
        kasaDAO.update(u);
    }

    public void delete(Kasa u) {
        kasaDAO.delete(u);
    }

    public Kasa findById(Integer userId) {
        return kasaDAO.findById(userId);
    }

    public List<Kasa> findAll() {
        return kasaDAO.findAll();
    }

    public List<Kasa> findByProperty(String propName, Object propValue) {
        return kasaDAO.findByProperty(propName, propValue);
    }

}
