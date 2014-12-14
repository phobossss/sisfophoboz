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
public class person extends orang {

    private String id_party;
    private String id_person;

    public person(String id_party, String name, String gender, String birthday, String deskripction, String street, int no) {
        super(name, gender, birthday, deskripction, street, no);
        this.id_party = id_party;
        this.id_person = id_party+1;
    }

   

    
    public String getId_party() {
        return id_party;
    }

    public void setId_party(String id_party) {
        this.id_party = id_party;
    }

    

    public String getId_person() {
        return id_person;
    }

    public void setId_person(String id_person) {
        this.id_person = id_person;
    }
	//Update Borneo

}
