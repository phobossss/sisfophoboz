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
        worker work=new worker("Pekerja","Laki-laki","19 Des 2010","Pekerja","Buahbatu",1);
        pesan pes=new pesan("Ulil","Mio","parah");
        p.addworker(work);
        p.addpesanan(pes);
        pesanan pe=new pesanan();
        pe.a=p;
        pe.show();
    }

}
