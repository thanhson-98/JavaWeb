package model;

import entity.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentModel {

    public Student findByUsernameAndStatus(String username, Student.Status status) throws ClassNotFoundException {
        try {
            String sqlCommand = "select * from students where username = ? and status = ?";
            PreparedStatement preparedStatement = ConnectionHelper.getConnection().prepareStatement(sqlCommand);
            preparedStatement.setString(1,username);
            preparedStatement.setInt(2,status.getValue());
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                String rsUsername = resultSet.getString(1);
                String rsPassword = resultSet.getString(2);
                String rsSalt = resultSet.getString(3);
                String rsFirstname = resultSet.getString(4);
                String rsLastname = resultSet.getString(5);
                String rsEmail = resultSet.getString(6);
                String rsPhone = resultSet.getString(7);
                int rsStatus = resultSet.getInt(8);

                Student student = new Student();

                student.setSalt(rsSalt);
                student.setUsername(rsUsername);
                student.setPassword(rsPassword);
                student.setFirstName(rsFirstname);
                student.setLastName(rsLastname);
                student.setEmail(rsEmail);
                student.setPhone(rsPhone);
                student.setStatus(Student.Status.findByValue(rsStatus));
                return student;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    public boolean save(Student student) throws ClassNotFoundException {

        try {
            String sqlCommand = "insert into students (username, password, salt, firstname, lastname, email, phone, status) values (?,?,?,?,?,?,?,?)";
            PreparedStatement preparedStatement = ConnectionHelper.getConnection().prepareStatement(sqlCommand);
            preparedStatement.setString(1, student.getUsername());
            preparedStatement.setString(2, student.getPassword());
            preparedStatement.setString(3,student.getSalt());
            preparedStatement.setString(4, student.getFirstName());
            preparedStatement.setString(5, student.getLastName());
            preparedStatement.setString(6, student.getEmail());
            preparedStatement.setString(7, student.getPhone());
            preparedStatement.setInt(8,student.getStatus());
            preparedStatement.execute();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
