/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.dao;

import com.stoktakip.domain.Stok;
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
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Elidor
 */
@Repository("StokDAO")
public class StokDAOImpl implements StokDAO {

    public void update(Stok s) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            session.update(s);
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            //session.close();
            //HibernateUtil.getSessionFactory().close();
        }
    }

    public void save(Stok s) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            session.save(s);
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            //session.close();
            //HibernateUtil.getSessionFactory().close();
        }
    }

    public List<Stok> findByProperty(String propName, Object propValue) {
        List<Stok> stokList = null;
        Transaction transaction = null;
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            transaction = session.beginTransaction();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Stok> query = builder.createQuery(Stok.class);
            Root<Stok> root = query.from(Stok.class);
            query.select(root).where(builder.equal(root.get(propName), propValue));
            Query<Stok> q = session.createQuery(query);
            stokList = q.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            //session.close();
            //HibernateUtil.getSessionFactory().close();
        }
        return stokList;
    }

    public void delete(Stok s) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            session.delete(s);
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            //session.close();
            //HibernateUtil.getSessionFactory().close();
        }
    }

    public List<Stok> findAll() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        List<Stok> urunList = null;
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            CriteriaQuery cq = session.getCriteriaBuilder().createQuery(Stok.class);
            cq.from(Stok.class);
            urunList = session.createQuery(cq).getResultList();
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            //session.close();
            //HibernateUtil.getSessionFactory().close();
        }
        return urunList;
    }
}
