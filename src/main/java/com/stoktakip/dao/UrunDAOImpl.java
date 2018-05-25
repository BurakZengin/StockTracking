/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.dao;

import com.stoktakip.domain.Urun;
import com.stoktakip.util.HibernateUtil;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Elidor
 */
@Repository("UrunDAO")
public class UrunDAOImpl implements UrunDAO {

    @Override
    public void save(Urun u) {

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
            //sessionFactory.close();
        }
    }

    public void update(Urun u) {
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            session.update(u);
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            //sessionFactory.close();
        }
    }

    public void delete(Urun u) {
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
            //sessionFactory.close();
        }
    }

    public Urun findById(Integer userId) {
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Urun urun = null;
        try {
            session.beginTransaction();
            urun = (Urun) session.get(Urun.class, userId);
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            sessionFactory.close();
        }
        return urun;
    }

    public List<Urun> findAll() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        List<Urun> urunList = null;
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            CriteriaQuery cq = session.getCriteriaBuilder().createQuery(Urun.class);
            cq.from(Urun.class);
            urunList = session.createQuery(cq).getResultList();
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            //sessionFactory.close();
        }
        return urunList;
    }

    public List<Urun> findByProperty(String propName, Object propValue) {

        List<Urun> stokList = null;
        Transaction transaction = null;
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            transaction = session.beginTransaction();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Urun> query = builder.createQuery(Urun.class);
            Root<Urun> root = query.from(Urun.class);
            query.select(root).where(builder.equal(root.get(propName), propValue));
            Query<Urun> q = session.createQuery(query);
            stokList = q.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            session.close();
            //sessionFactory.close();
        }
        return stokList;
    }

}
