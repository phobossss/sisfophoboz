/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tubes;

import pdatabase.Koneksi;

/**
 *
 * @author Compaq
 */
public class Ban extends SparePart implements Interface {


    protected String jenis;

    public Ban(){     
    }

  
    public String getJenis() {
        return jenis;
    }

    
    public void setJenis(String jenis) {
        this.jenis = jenis;
    }
    protected String merek;

    
    public String getMerek() {
        return merek;
    }

    
    public void setMerek(String merek) {
        this.merek = merek;
    }
    protected String fungsi;

    
    public String getFungsi() {
        return fungsi;
    }

    
    public void setFungsi(String fungsi) {
        this.fungsi = fungsi;
    }
    protected String ukuran;

    
    public String getUkuran() {
        return ukuran;
    }

    
    public void setUkuran(String ukuran) {
        this.ukuran = ukuran;
    }

    public void setHarga(double harga) {
        this.harga = harga;
    }

    public void setJumlah(int jumlah) {
        this.jumlah = jumlah;
    }
    

    @Override
    public void fungsi(String fngs) {
        System.out.println("");
    }

    @Override
    public void tambah(String tmbh) {
        System.out.println("");
    }

    @Override
    public void kurang(String krng) {
        System.out.println("");;
    }
    
    public boolean insBarang(){
        Koneksi kon = new Koneksi();
        String q = "insert into barang values('"+this.getId_barang()+"', '"+this.getJenis()+"', '"+this.getMerek()+"', '"+this.getFungsi()+"', '"+this.getUkuran()+"', '"+this.getJumlah()+"', '"+this.getHarga()+"')";
        kon.query(q);
        if (kon.isInsert)
            return true;
        else
            return false;
    }
    
public boolean updBarang(int id){
        Koneksi kon = new Koneksi();
        String q = "update barang set jenis='"+jenis+"', merek='"+merek+"', fungsi='"+fungsi+"', ukuran='"+ukuran+"', jumlah='"+jumlah+"', harga='"+harga+"' where id_barang='"+id+"'";
        kon.query(q);
        if (kon.isInsert)
            return true;
        else
            return false;
    }
    
public boolean delBarang(String id){
        Koneksi kon = new Koneksi();
        String q = "delete from barang where id_barang='"+id+"'";
        kon.query(q);
        if (kon.isInsert)
            return true;
        else
            return false;
    }
    
}
