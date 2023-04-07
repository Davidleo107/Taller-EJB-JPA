/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.session;

import com.entity.Studen;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author David Reinoso
 */
@Stateless
public class StudenFacade extends AbstractFacade<Studen> implements StudenFacadeLocal {

    @PersistenceContext(unitName = "CRUD_Lab-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudenFacade() {
        super(Studen.class);
    }
    
}
