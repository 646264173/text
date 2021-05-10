package servlet.student;

import mapper.ExamineeMapper;
import mapper.PayMapper;
import mapper.RegistMapper;
import model.Examinee;
import model.Pay;
import model.Regist;
import utill.DateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.Random;

@WebServlet("/pay")
public class PayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        用户session检测
        HttpSession session = req.getSession();
        if (session.getAttribute("sfzh") !=null){
            Pay pay =new Pay();
            pay.setInputName((String) session.getAttribute("sfzh"));
//            如果session中存在，则请求转发到页面
            if (new PayMapper().cxPay(pay)){
                req.setAttribute("msg","您已支付！无需再次支付！");
                req.getRequestDispatcher("/html/student/msg.jsp").forward(req,resp);
            }else {
                req.getRequestDispatcher("/html/student/weChatPayment.jsp").forward(req,resp);
            }

        }else {
//            否则重定向到index
            resp.sendRedirect("index");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session =req.getSession();
        String idNumber = (String) session.getAttribute("sfzh");
        Regist regist = new RegistMapper().selectByIdNumber(idNumber);
//        根据报名登记id查询支付对象信息
        Pay isPay =new PayMapper().selectByRegistId(regist.getRegistId());
//        根据报名登记id查询支付对象信息
        if (isPay == null){
            Pay pay = new Pay();
            pay.setRegistId(regist.getRegistId());
            pay.setPayType(1);
            pay.setPrice(120);
            pay.setInputName(idNumber);
            pay.setInputDate(new DateUtil().getStringDate("yyyy-MM-dd HH:mm:ss"));

//            向数据库插入支付信息
         boolean isSuccess = new PayMapper().insert(pay);
         if (isSuccess){
             Examinee examinee = new Examinee();
             examinee.setRegistId(regist.getRegistId());
           String zkzh = "200"+ new DateUtil().getStringDate("ddHHmmss")+(new Random().nextInt(900)+100);
//             生成准考证号
//             String zkzh = "207221943802";
             examinee.setExamineeId(String.valueOf(zkzh));
//             录取状态设置为未录取
             examinee.setAcceptStatus(1);
             examinee.setInputName(idNumber);
             examinee.setInputDate(new DateUtil().getStringDate("yyyy-MM-dd HH:mm:ss"));
// 向数据库插入考生信息

             new ExamineeMapper().insert(examinee);
             resp.getWriter().write("true");

         }else {
             resp.getWriter().write("false");
         }
        }else {
            resp.getWriter().write("false");
        }
    }
}
