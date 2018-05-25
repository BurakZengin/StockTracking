/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.service;

import com.stoktakip.dao.UrunDAO;
import com.stoktakip.domain.Urun;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Elidor
 */
@Service
public class UrunServiceImpl implements UrunService {

    @Autowired
    private UrunDAO urunDAO;

    public void save(Urun u) {
        urunDAO.save(u);
    }

    public void update(Urun u) {
        urunDAO.update(u);
    }

    public void delete(Urun u) {
        urunDAO.delete(u);
    }

    public Urun findById(Integer urunId) {
        return urunDAO.findById(urunId);
    }

    public List<Urun> findAll() {
        return urunDAO.findAll();
    }

    public List<Urun> findByProperty(String propName, Object propValue) {
        return urunDAO.findByProperty(propName, propValue);
    }

}
