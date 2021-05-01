package servlet.student;

import mapper.MajorMapper;
import model.Major;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
//注册页面跳转
@WebServlet("/register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Major> majorList = new  MajorMapper().selectAll();
        req.setAttribute("majorList",majorList);
        req.getRequestDispatcher("/html/student/signUp.jsp").forward(req,resp);
    }
}

//3.4 ppt第8页
