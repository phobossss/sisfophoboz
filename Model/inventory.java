/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

/**
 *
 * @author Ulil
 */
public class inventory {
    
    private String id_inventory;
    
    private int total;
    
    private String id_wh;
    
    private String id_iit;
    
    private String nama_item;

    public inventory(int total, String nama_item) {
        this.id_inventory=nama_item+total;
        this.total = total;
        this.nama_item = nama_item;
    }
    
    public String getNama_item() {
        return nama_item;
    }

    public void setNama_item(String nama_item) {
        this.nama_item = nama_item;
    }

    public String getId_iit() {
        return id_iit;
    }

    public void setId_iit(String id_iit) {
        this.id_iit = id_iit;
    }

    public String getId_wh() {
        return id_wh;
    }

    public void setId_wh(String id_wh) {
        this.id_wh = id_wh;
    }


    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }


    public String getId_inventory() {
        return id_inventory;
    }

    public void setId_inventory(String id_inventory) {
        this.id_inventory = id_inventory;
    }

}
