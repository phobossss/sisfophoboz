/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pdatabase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Compaq
 */
public class Koneksi {

    public boolean isInsert = false;
    private String dbuser = "root";
    private String dbpasswd = "";
    private Statement stmt = null;
    private Connection con = null;
    private ResultSet rs = null;
    private int min = 0;

    public Koneksi() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "" + e.getMessage(), "JDBC Driver Error", JOptionPane.WARNING_MESSAGE);
        }

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost/dealer", dbuser, dbpasswd);
            stmt = con.createStatement();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "" + e.getMessage(), "Connection Error", JOptionPane.WARNING_MESSAGE);
        }
    }

    public ResultSet getData(String SQLString) {

        try {
            rs = stmt.executeQuery(SQLString);

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error:" + e.getMessage(), "Communication Error", JOptionPane.WARNING_MESSAGE);
        }

        return rs;
    }

    public boolean query(String SQLString) {
        boolean i = false;
        try {
            stmt.executeUpdate(SQLString);
            i = true;
            isInsert = true;
        } catch (Exception e) {
            isInsert = false;
            JOptionPane.showMessageDialog(null, "Error:" + e.getMessage(), "Communication Error", JOptionPane.WARNING_MESSAGE);
        }
        return i;
    }
}
