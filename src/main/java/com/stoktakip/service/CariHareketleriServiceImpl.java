/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.service;

import com.stoktakip.dao.CariHareketleriDAO;
import com.stoktakip.domain.CariHareketleri;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Elidor
 */
@Service
public class CariHareketleriServiceImpl implements CariHareketleriService {

    @Autowired
    private CariHareketleriDAO cariHareketleriDAO;

    public void save(CariHareketleri u) {
        cariHareketleriDAO.save(u);
    }

    public void update(CariHareketleri u) {
        cariHareketleriDAO.update(u);
    }

    public void delete(CariHareketleri u) {
        cariHareketleriDAO.delete(u);
    }

    public CariHareketleri findById(Integer userId) {
        return cariHareketleriDAO.findById(userId);
    }

    public List<CariHareketleri> findAll() {
        return cariHareketleriDAO.findAll();
    }

    public List<CariHareketleri> findByProperty(String propName, Object propValue) {
        return cariHareketleriDAO.findByProperty(propName, propValue);
    }

}
