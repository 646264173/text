package servlet.student;

import mapper.MajorMapper;
import mapper.RegistMapper;
import model.Major;
import model.Regist;
import utill.DateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;
import java.util.Random;

//注册页面跳转
@WebServlet("/register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Major> majorList = new  MajorMapper().selectAll();
        req.setAttribute("majorList",majorList);
        req.getRequestDispatcher("/html/student/signUp.jsp").forward(req,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        String identityNumber = req.getParameter("identityNumber");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String sex = req.getParameter("sex");
        String zzmm = req.getParameter("zzmm");
        String highSchool = req.getParameter("highSchool");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
        String parentPhone = req.getParameter("parentPhone");
        String headmasterPhone = req.getParameter("headmasterPhone");
        String firstChoice = req.getParameter("firstChoice");
        String secondChoice = req.getParameter("secondChoice");
        String thirdChoice = req.getParameter("thirdChoice");


        if (new RegistMapper().selectByIdNumber(identityNumber)!=null){
            req.setAttribute("msg","请勿重新注册");
            req.getRequestDispatcher("/html/student/msg.jsp").forward(req,resp);

        }else{
            String dateString =new DateUtil().getStringDate("yyMMddHHmmss");
            String examineeNumber =dateString + (new Random().nextInt(900)+100);

            Regist regist =new Regist();
            regist.setExamineeNumber(String.valueOf(examineeNumber));
            regist.setIdentityNumber(identityNumber);
            regist.setPassword(password);
            regist.setName(name);
            regist.setSex(Integer.valueOf(sex));
            regist.setPoliticalOutlook(Integer.valueOf(zzmm));
            regist.setHighSchool(highSchool);
            regist.setEmail(email);
            regist.setAddress(address);
            regist.setPhone(phone);
            regist.setParentPhone(parentPhone);
            regist.setHeadmasterPhone(headmasterPhone);
            regist.setFirstChoice(Integer.valueOf(firstChoice));
            regist.setSecondChoice(Integer.valueOf(secondChoice));
            regist.setThirdChoice(Integer.valueOf(thirdChoice));
            regist.setInputName(identityNumber);
            regist.setInputDate(new DateUtil().getStringDate("yyyy-MM-dd HH:mm:ss"));



            boolean isReg =new RegistMapper().insert(regist);
            if (isReg){
                HttpSession session =req.getSession();
                session.setAttribute("sfzh",identityNumber);
            }
            req.setAttribute("msg","注册成功");
            req.getRequestDispatcher("/html/student/msg.jsp").forward(req,resp);
        }

    }


}

