/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.service;

import com.stoktakip.dao.CariDAO;
import com.stoktakip.domain.Cari;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Elidor
 */
@Service
public class CariServiceImpl implements CariService {

    @Autowired
    private CariDAO cariDAO;

    public void save(Cari u) {
        cariDAO.save(u);
    }

    public void update(Cari u) {
        cariDAO.update(u);
    }

    public void delete(Cari u) {
        cariDAO.delete(u);
    }

    public Cari findById(Integer userId) {
        return cariDAO.findById(userId);
    }

    public List<Cari> findAll() {
        return cariDAO.findAll();
    }

    public List<Cari> findByProperty(String propName, Object propValue) {
        return cariDAO.findByProperty(propName, propValue);
    }

}
