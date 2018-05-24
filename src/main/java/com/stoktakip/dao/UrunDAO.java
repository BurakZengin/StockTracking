/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.dao;

import com.stoktakip.domain.Urun;
import java.util.List;

/**
 *
 * @author Elidor
 */
public interface UrunDAO {

    public void save(Urun u);
    
    public void update(Urun u);
    
    public void delete(Urun u);
    
    public Urun findById(Integer userId);
    
    public List<Urun> findAll();
    
    public List<Urun> findByProperty(String propName, Object propValue);
}
