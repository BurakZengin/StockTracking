/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.dao;

import com.stoktakip.domain.Kategoriler;
import com.stoktakip.util.HibernateUtil;
import java.util.List;
import javax.persistence.criteria.CriteriaQuery;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Elidor
 */
@Repository("KategorilerDAO")
public class KategorilerDAOImpl implements KategorilerDAO {

    public void save(Kategoriler u) {
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            session.save(u);
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            sessionFactory.close();
        }
    }

    public void delete(Kategoriler u) {
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            session.delete(u);
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            sessionFactory.close();
        }
    }

    public Kategoriler findById(Integer userId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Kategoriler> findAll() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();

        //
        // We read labels record from database using a simple Hibernate query,
        // the Hibernate Query Language (HQL).
        //
        List labels = session.createQuery("from kategoriler").list();
        session.getTransaction().commit();

        return labels;
    }

    public List<Kategoriler> findByProperty(String propName, Object propValue) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
