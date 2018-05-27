/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.dao;

import com.stoktakip.domain.CariHareketleri;
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
@Repository("CariHareketleriDAO")
public class CariHareketleriDAOImpl implements CariHareketleriDAO {

    public void save(CariHareketleri c) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            session.save(c);
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            //sessionFactory.close();
        }
    }

    public void update(CariHareketleri c) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            session.update(c);
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            //sessionFactory.close();
        }
    }

    public void delete(CariHareketleri c) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            session.delete(c);
            tr.commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            //sessionFactory.close();
        }
    }

    public CariHareketleri findById(Integer cariId) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        CariHareketleri cariHareketleri = null;
        try {
            session.beginTransaction();
            cariHareketleri = (CariHareketleri) session.get(CariHareketleri.class, cariId);
            session.getTransaction().commit();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
            //sessionFactory.close();
        }
        return cariHareketleri;
    }

    public List<CariHareketleri> findAll() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        List<CariHareketleri> userList = null;
        try {
            org.hibernate.Transaction tr = session.beginTransaction();
            CriteriaQuery cq = session.getCriteriaBuilder().createQuery(CariHareketleri.class);
            cq.from(CariHareketleri.class);
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

    public List<CariHareketleri> findByProperty(String propName, Object propValue) {
        List<CariHareketleri> cariHareketleriList = null;
        Transaction transaction = null;
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        try {
            transaction = session.beginTransaction();
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<CariHareketleri> query = builder.createQuery(CariHareketleri.class);
            Root<CariHareketleri> root = query.from(CariHareketleri.class);
            query.select(root).where(builder.equal(root.get(propName), propValue));
            Query<CariHareketleri> q = session.createQuery(query);
            cariHareketleriList = q.getResultList();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        } finally {
            session.close();
            //sessionFactory.close();
        }
        return cariHareketleriList;
    }

}
