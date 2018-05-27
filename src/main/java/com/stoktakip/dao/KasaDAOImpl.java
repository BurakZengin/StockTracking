/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.dao;

import com.stoktakip.domain.Kasa;
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
@Repository("KasaDAO")
public class KasaDAOImpl implements KasaDAO {

    public void save(Kasa u) {
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

    public void update(Kasa u) {
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

    public void delete(Kasa u) {
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

    public Kasa findById(Integer userId) {
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Kasa user = null;
        try {
            session.beginTransaction();
            user = (Kasa) session.get(Kasa.class, userId);
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            //sessionFactory.close();
        }
        return user;
    }

    public List<Kasa> findAll() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        List<Kasa> userList = null;
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            CriteriaQuery cq = session.getCriteriaBuilder().createQuery(Kasa.class);
            cq.from(Kasa.class);
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

    public List<Kasa> findByProperty(String propName, Object propValue) {
        List<Kasa> userList = null;
        Transaction transaction = null;
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            transaction = session.beginTransaction();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Kasa> query = builder.createQuery(Kasa.class);
            Root<Kasa> root = query.from(Kasa.class);
            query.select(root).where(builder.equal(root.get(propName), propValue));
            Query<Kasa> q = session.createQuery(query);
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
