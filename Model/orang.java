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
public class orang extends address {

    String name;

    String gender;

    String birthday;

    String deskripction;

    public orang(String name, String gender, String birthday, String deskripction, String street, int no) {
        super(street, no);
        this.name = name;
        this.gender = gender;
        this.birthday = birthday;
        this.deskripction = deskripction;
    }


    public String getDeskripction() {
        return deskripction;
    }

    public void setDeskripction(String deskripction) {
        this.deskripction = deskripction;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
