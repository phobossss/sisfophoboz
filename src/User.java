/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tubes;

/**
 *
 * @author Compaq
 */
public class User  {
    private String nama, no_telp, alamat;

    public User(String nama, String no_telp, String alamat) {
        this.nama = nama;
        this.no_telp = no_telp;
        this.alamat = alamat;
    }

    public User() {
    }

    public String getAlamat() {
        return alamat;
    }

    public String getNama() {
        return nama;
    }

    public String getNo_telp() {
        return no_telp;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public void setNo_telp(String no_telp) {
        this.no_telp = no_telp;
    }
    
    
    
    public boolean insUser(){
        Koneksi kon = new Koneksi();
        String q = "insert into user values('"+this.getId()+"', '"+this.getNama()+"', '"+this.getNoTelp()+"', '"+this.getAlamat+"')";
        kon.query(q);
        if (kon.isInsert)
            return true;
        else
            return false;
    }
    
public boolean updUser(int id){
        Koneksi kon = new Koneksi();
        String q = "update orang set nama='"+this.getNama()+"', no_telp='"+this.getNoTelp()+"', alamat='"+this.getAlamat+"' where id_user='"+id+"'";
        kon.query(q);
        if (kon.isInsert)
            return true;
        else
            return false;
    }
    
public boolean delUser(String id){
        Koneksi kon = new Koneksi();
        String q = "delete from orang where id_user='"+id+"'";
        kon.query(q);
        if (kon.isInsert)
            return true;
        else
            return false;
    }
    
    
}
