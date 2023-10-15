package murach.business;

import java.io.Serializable;

public class User implements Serializable {

    private String firstName;
    private String lastName;
    private String email;
    private String dateofBirth; // Changed attribute name to follow conventions
    private String hearabout;   // Changed attribute name to follow conventions
    private String receiveA;    // Changed attribute name to follow conventions
    private String contactBy;   // Changed attribute name to follow conventions

    public User() {
        firstName = "";
        lastName = "";
        email = "";
//        dateofBirth = "";
//        hearabout = "";
//        receiveA = "";
//        contactBy = "";
    }

    public User(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        dateofBirth = "";
        hearabout = "";
        receiveA = "";
        contactBy = "";
    }

    public User(String firstName, String lastName, String email, String dateofBirth, String hearabout, String receiveA, String contactBy) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dateofBirth = dateofBirth;
        this.hearabout = hearabout;
        this.receiveA = receiveA;
        this.contactBy = contactBy;
    }

    // Getters and setters with corrected method names
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDateofBirth() {
        return dateofBirth;
    }

    public void setDateofBirth(String dateofBirth) {
        this.dateofBirth = dateofBirth;
    }

    public String getHearabout() {
        return hearabout;
    }

    public void setHearabout(String hearabout) {
        this.hearabout = hearabout;
    }

    public String getReceiveA() {
        return receiveA;
    }

    public void setReceiveA(String receiveA) {
        this.receiveA = receiveA;
    }

    public String getContactBy() {
        return contactBy;
    }

    public void setContactBy(String contactBy) {
        this.contactBy  = contactBy;
    }
}
