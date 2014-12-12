/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import model.*;

/**
 *
 * @author Ulil
 */
public class Controll {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        party p = new party("Phobos Group");
        person phob = new person("1Phobos", "Phobos", "Laki-Laki", "18-Des-2010", "Phobos grup", "Buahbatu", 1);
        pesanan pe=new pesanan();
        pe.a=p;
        pe.show();
    }

}
