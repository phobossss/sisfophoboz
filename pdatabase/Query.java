/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pdatabase;

/**
 *
 * @author Compaq
 */
public class Query {
    
    
	


	public boolean insService(){
        Koneksi kon = new Koneksi();
        String q = "insert into service values('"+Id+"', '"+lokasi+"', '"+lama_service+"', '"+harga+"')";
        kon.query(q);
        if (kon.isInsert)
            return true;
        else
            return false;
    }
    
public boolean updService(String id){
        Koneksi kon = new Koneksi();
        String q = "update service set lokasi='"+lokasi+"', lama_service'"+lama_service+"', harga='"+harga+"' where id_service='"+id+"'";
        kon.query(q);
        if (kon.isInsert)
            return true;
        else
            return false;
    }
    
public boolean delService(String id){
        Koneksi kon = new Koneksi();
        String q = "delete from service where id_service='"+id+"'";
        kon.query(q);
        if (kon.isInsert)
            return true;
        else
            return false;
    }
	
public boolean insTransaksi(){
        Koneksi kon = new Koneksi();
        String q = "insert into transaksi values('"+Id_transaksi+"', '"+id_barang+"', '"+id_user+"', '"+id_service+"', '"+harga+"')";
        kon.query(q);
        if (kon.isInsert)
            return true;
        else
            return false;
    }
    
}
