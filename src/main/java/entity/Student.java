package entity;

public class Student {
    private String FirstName;
    private String LastName;
    private String Email;
    private String Password;
    private String Salt;
    private String Phone;
    private String Username;
    private int status;

    public Student() {
        FirstName = "";
        LastName = "";
        Email = "";
        Password = "";
        Phone = "";
        Username = "";
    }

    public enum Status{
        ACTIVE(1), DEACTIVE(0), DELETED(-1);
        int value;
        Status (int value){
            this.value = value;
        }
        public int getValue(){
            return value;
        }

        public static Status findByValue(int value){
            for (Status status : Status.values()){
                if (status.getValue() == value){
                    return status;
                }
            }
            return null;
        }
    }

    public String getSalt() {
        return Salt;
    }

    public void setSalt(String salt) {
        Salt = salt;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        if (status == null){
            status = status.DEACTIVE;
        }
        this.status = status.getValue();
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String lastName) {
        LastName = lastName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }
}
