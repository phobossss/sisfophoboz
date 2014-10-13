/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tubes;

/**
 *
 * @author Compaq
 */
abstract class SparePart implements Interface {
    private String merk, ukuran;
    public int jumlah = 0;
    public double harga;
    public String id_barang;

    public SparePart(){
    }

    public String getId_barang() {
        return id_barang;
    }

    public void setId_barang(String id_barang) {
        this.id_barang = id_barang;
    }
    

    public double getHarga() {
        return harga;
    }

    public int getJumlah() {
        return jumlah;
    }

    public String getMerk() {
        return merk;
    }

    public String getUkuran() {
        return ukuran;
    }
    
    
}
