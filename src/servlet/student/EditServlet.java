package servlet.student;

import mapper.MajorMapper;
import mapper.RegistMapper;

import model.Major;
import model.Regist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet("/edit")
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("sfzh")!=null){
            String idNumber  = session.getAttribute("sfzh").toString();
            Regist regist = new RegistMapper().selectByIdNumber(idNumber);
            req.setAttribute("regist",regist);
            List<Integer>majorIdList = new ArrayList<>();
            List<Major>majorList = new ArrayList<>();
            majorIdList.add(regist.getFirstChoice());
            majorIdList.add(regist.getSecondChoice());
            majorIdList.add(regist.getThirdChoice());
            for (int i = 0;i<majorIdList.size();i++){
                majorList.add(new MajorMapper().selectById(majorIdList.get(i)));
            }
            req.setAttribute("majorList",majorList);
            req.getRequestDispatcher("/html/student/applicationDetails.jsp").forward(req,resp);
        }else {
            resp.sendRedirect("index");
        }

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        HttpSession session = req.getSession();
        String idNumber = session.getAttribute("sfzh").toString();
        Regist regist = new  RegistMapper().selectByIdNumber(idNumber);
        String highSchool = req.getParameter("highSchool");
        String email =req.getParameter("email");
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
        String parentPhone = req.getParameter("parentPhone");
        String headmasterPhone =req.getParameter("headmasterPhone");
        regist.setHighSchool(highSchool);
        regist.setEmail(email);
        regist.setAddress(address);
        regist.setPhone(phone);
        regist.setParentPhone(parentPhone);
        regist.setHeadmasterPhone(headmasterPhone);

        System.out.println(highSchool);
        System.out.println(email);
        System.out.println(address);
        System.out.println(phone);
        System.out.println(parentPhone);
        System.out.println(headmasterPhone);

//更新后返回

        if (new RegistMapper().update(regist)){
            req.setAttribute("msg","更新成功!<a href =' '>点击查看</ a>");

            req.getRequestDispatcher("/html/student/msg.jsp").forward(req,resp);
        }else {
            req.setAttribute("msg","更新失败!");
            req.getRequestDispatcher("/html/student/msg.jsp").forward(req,resp);
        }
    }
}







