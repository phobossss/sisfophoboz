/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tubes;

/**
 *
 * @author Compaq
 */
public class Motor {
    private String merk, type;
    private String id_motor;
    

    public Motor(String merk, String type) {
        this.merk = merk;
        this.type = type;
        
    }

    public Motor() {
        
    }

    public void setMerk(String merk) {
        this.merk = merk;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    

    public String getMerk() {
        return merk;
    }

    public String getType() {
        return type;
    }
    
    
    
}
