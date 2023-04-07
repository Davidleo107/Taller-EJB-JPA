/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.session;

import com.entity.Studen;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author David Reinoso
 */
@Local
public interface StudenFacadeLocal {

    void create(Studen studen);

    void edit(Studen studen);

    void remove(Studen studen);

    Studen find(Object id);

    List<Studen> findAll();

    List<Studen> findRange(int[] range);

    int count();
    
}
