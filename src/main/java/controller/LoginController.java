package controller;

import entity.Student;
import model.StudentModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Student student = (Student) session.getAttribute("currentLoggedIn");
        req.setAttribute("student",student);
        req.getRequestDispatcher("/member/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        String inputUsername = req.getParameter("Username");
        String inputPassword = req.getParameter("Password");
        StudentModel model = new StudentModel();
        Student student = null;
        try {
            student = model.findByUsernameAndStatus(inputUsername, Student.Status.ACTIVE);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (student == null){
            resp.setStatus(404);
            resp.getWriter().println("The cosmic object you are looking for has disappeared beyond the event horizon");
        }else{
            // Ma hoa password voi salt lay tu database truoc khi so sanh
            if (inputPassword.equals(student.getPassword())){
                HttpSession session = req.getSession();
                session.setAttribute("currentLoggedIn",student);
                resp.setStatus(200);
                resp.getWriter().println("Login account successfully");
            }else {
                resp.setStatus(404);
                resp.getWriter().println("Wrong account information");
            }
        }

    }
}
