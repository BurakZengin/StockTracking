/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.service;

import com.stoktakip.dao.StokDAO;
import com.stoktakip.domain.Stok;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Elidor
 */
@Service
public class StokServiceImpl implements StokService {

    @Autowired
    private StokDAO stokDAO;

    public void update(Stok s) {
        stokDAO.update(s);
    }

    public void save(Stok s) {
        stokDAO.save(s);
    }

    public List<Stok> findByProperty(String propName, Object propValue) {
        return stokDAO.findByProperty(propName, propValue);
    }

    public List<Stok> findAll() {
        return stokDAO.findAll();
    }

    public void delete(Stok s) {
        stokDAO.delete(s);
    }
}
