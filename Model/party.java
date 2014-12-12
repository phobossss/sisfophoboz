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
public class party {

    String id_party;
    String description;
    pesan[] listpesanan = new pesan[50];
    int jumpesan;
    worker[] listworker = new worker[50];
    int jum;
    person pemilik;
    public int getjumlahpekerja(){
        return jum;
    }
    public int getjumlahpesanan(){
        return jumpesan;
    }
    public party(String description) {
        this.description = description;
        this.id_party = "1Phobos";
    }

    public void addpemilik(person p) {
        this.pemilik = p;

    }

    public void addworker(worker w) {
        listworker[jum] = w;
        jum++;
    }

    public void addpesanan(pesan pe) {
        listpesanan[jumpesan] = pe;
        jumpesan++;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getId_party() {
        return id_party;
    }

    public void setId_party(String id_party) {
        this.id_party = id_party;
    }

    public worker[] getworker() {
        return listworker;
    }
    public pesan[] getlistpesan(){
        return listpesanan;
    }
}
