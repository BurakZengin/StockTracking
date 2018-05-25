/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.dao;

import com.stoktakip.domain.Cari;
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
@Repository("CariDAO")
public class CariDAOImpl implements CariDAO {

    public void save(Cari u) {
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

    public void update(Cari u) {
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

    public void delete(Cari u) {
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

    public Cari findById(Integer userId) {
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Cari user = null;
        try {
            session.beginTransaction();
            user = (Cari) session.get(Cari.class, userId);
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            //sessionFactory.close();
        }
        return user;
    }

    public List<Cari> findAll() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        List<Cari> userList = null;
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            CriteriaQuery cq = session.getCriteriaBuilder().createQuery(Cari.class);
            cq.from(Cari.class);
            userList = session.createQuery(cq).getResultList();
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            //sessionFactory.close();
        }
        return userList;
    }

    public List<Cari> findByProperty(String propName, Object propValue) {
        List<Cari> userList = null;
        Transaction transaction = null;
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            transaction = session.beginTransaction();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Cari> query = builder.createQuery(Cari.class);
            Root<Cari> root = query.from(Cari.class);
            query.select(root).where(builder.equal(root.get(propName), propValue));
            Query<Cari> q = session.createQuery(query);
            userList = q.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            session.close();
            //sessionFactory.close();
        }
        return userList;
    }

}
