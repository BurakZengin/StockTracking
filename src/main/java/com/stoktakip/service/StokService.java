/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.service;

import com.stoktakip.domain.Stok;
import java.util.List;

/**
 *
 * @author Elidor
 */
public interface StokService {

    public void save(Stok s);

    public void update(Stok s);
    
    public void delete(Stok s);
    
    public List<Stok> findAll();

    public List<Stok> findByProperty(String propName, Object propValue);
}
