/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tubes;

import javax.management.Query;

/**
 *
 * @author Compaq
 */
public class Tubes {
    private static double harga;

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        //Oli o = new Oli("top 1 ", "800 ml", 40000);
        Ban b = new Ban();
       // Rantai r = new Rantai("astra", "1 m", 400000);
        //ShockBreaker s = new ShockBreaker("YSS ", "50 cm", 500000);
        //Motor m  = new Motor("Honda", "Matic");
        b.setId_barang("B02");
        b.setFungsi("Ban Motor");
        b.setJenis("Ban");
        b.setMerek("Maxxis");
        b.setJumlah(21);
        b.setHarga(250000);
        b.setUkuran("14,5");
        String a = "B01";
        if(b.delBarang(a))
            System.out.println("Del berhasil");
        
       
    }
}
