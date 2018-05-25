/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.service;

import com.stoktakip.dao.KategorilerDAO;
import com.stoktakip.dao.KategorilerDAOImpl;
import com.stoktakip.domain.Kategoriler;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Elidor
 */
@Service
public class KategorilerServiceImpl implements KategorilerService {

    @Autowired
    private KategorilerDAO kategorilerDAO;

    public void save(Kategoriler u) {
        kategorilerDAO.save(u);
    }

    public void delete(Kategoriler u) {
        kategorilerDAO.delete(u);
    }

    public Kategoriler findById(Integer userId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Kategoriler> findAll() {
        return kategorilerDAO.findAll();
    }

    public List<Kategoriler> findByProperty(String propName, Object propValue) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
