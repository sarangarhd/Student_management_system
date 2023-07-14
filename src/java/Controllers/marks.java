/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controllers;

/**
 *
 * @author rhdsa
 */
public class marks {
    
     private String stid;
    private String suid;
       
    private int marks;
    
    public marks() {
    }

    public marks(String stid, String suid,int marks) {
        this.stid = stid;
        this.suid = suid;
        this.marks = marks;
        
    }
    
     public String getStid() {
        return stid;
    }

    public void setStid(String stid) {
        this.stid = stid;
    }
    
    public String getSuid() {
        return suid;
    }

    public void setSuid(String suid) {
        this.suid = suid;
    }
    
    
     public int getMarks() {
        return marks;
    }

    public void setMarks(int marks) {
        this.marks = marks;
    }
    
}
