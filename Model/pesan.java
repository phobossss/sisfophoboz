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
public class pesan {

    private String nama_pemilik;
    private String motor;

    private String status;

    private String akreditasi;
    
    private String nama_pengerja;

    public String getNama_pengerja() {
        return nama_pengerja;
    }

    public void setNama_pengerja(String nama_pengerja) {
        this.nama_pengerja = nama_pengerja;
    }


    public String getAkreditasi() {
        return akreditasi;
    }

    public void setAkreditasi(String akreditasi) {
        this.akreditasi = akreditasi;
    }

    private int lama_pengerjaan;

    public int getLama_pengerjaan() {
        return lama_pengerjaan;
    }

    public void setLama_pengerjaan(int lama_pengerjaan) {
        this.lama_pengerjaan = lama_pengerjaan;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    private String kerusakan;

    public pesan(String nama_pemilik, String motor, String kerusakan) {
        this.nama_pemilik = nama_pemilik;
        this.motor = motor;
        this.kerusakan = kerusakan;
        this.status = "Pending";
        this.lama_pengerjaan = 0;
    }

    public String getKerusakan() {
        return kerusakan;
    }

    public void setKerusakan(String kerusakan) {
        this.kerusakan = kerusakan;
    }

    public String getNama_pemilik() {
        return nama_pemilik;
    }

    public void setNama_pemilik(String nama_pemilik) {
        this.nama_pemilik = nama_pemilik;
    }

    public String getMotor() {
        return motor;
    }

    public void setMotor(String motor) {
        this.motor = motor;
    }
	//Update borneo

}
