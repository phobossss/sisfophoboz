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
public class worker extends orang{
    
    private String id_worker;
    
    private int total_experience;
    
    private String type_skill;

    public worker(String name, String gender, String birthday, String deskripction, String street, int no) {
        super(name, gender, birthday, deskripction, street, no);
        this.id_worker=name+"1";
    }

    public String getType_skill() {
        return type_skill;
    }

    public void setType_skill(String type_skill) {
        this.type_skill = type_skill;
    }

    public int getTotal_experience() {
        return total_experience;
    }

    public void setTotal_experience(int total_experience) {
        this.total_experience = total_experience;
    }


    public String getId_worker() {
        return id_worker;
    }

    public void setId_worker(String id_worker) {
        this.id_worker = id_worker;
    }
}
