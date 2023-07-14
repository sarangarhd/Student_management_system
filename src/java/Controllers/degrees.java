/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controllers;

/**
 *
 * @author rhdsa
 */
public class degrees {
  
    private int d_id;
    private String d_name;
    private String d_fullname;
    
    public degrees() {
    }

    public degrees(int d_id, String d_name, String d_fullname) {
        this.d_id = d_id;
        this.d_name = d_name;
        this.d_fullname=d_fullname;
        
    }
    
     public int getD_id() {
        return d_id;
    }

    public void setD_id(int d_id) {
        this.d_id = d_id;
    }
    
    public String getD_name() {
        return d_name;
    }

    public void setD_name(String d_name) {
        this.d_name = d_name;
    }
    
    
     public String getD_fullname() {
        return d_fullname;
    }

    public void setD_fullname(String d_fullname) {
        this.d_fullname = d_fullname;
    }
    
}