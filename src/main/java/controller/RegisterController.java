package controller;

import com.google.gson.Gson;
import entity.Student;
import model.StudentModel;
import security.HandleString;
import sun.security.util.Password;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

public class RegisterController extends HttpServlet {

    private static StudentModel model = new StudentModel();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Student student = new Student();
        req.setAttribute("student",student);
        req.getRequestDispatcher("/member/register.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("Username");
        String password = req.getParameter("Password");
        String firstname = req.getParameter("FirstName");
        String lastname = req.getParameter("LastName");
        String email = req.getParameter("Email");
        String phone = req.getParameter("Phone");

        Student student = new Student();

        try {
            String salt = HandleString.generatedSalt();
            String pass = HandleString.getSecurePassword(password) + salt;
            student.setUsername(username);
            student.setPassword(pass);
            student.setFirstName(firstname);
            student.setLastName(lastname);
            student.setEmail(email);
            student.setPhone(phone);
            student.setSalt(salt);
            model.save(student);
        } catch (Exception e) {
            e.printStackTrace();
        }


        resp.getWriter().println(new Gson().toJson(student));


    }
}
