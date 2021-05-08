package servlet.student;

import mapper.PayMapper;
import mapper.RegistMapper;
import model.Pay;
import model.Regist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/paySuccess")
public class PaySuccessServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("sfzh") != null){
            String idNumber = session.getAttribute("sfzh").toString();
            Regist regist = new RegistMapper().selectByIdNumber(idNumber);
            Pay pay = new PayMapper().selectByRegistId(regist.getRegistId());
            req.setAttribute("pay",pay);
            req.getRequestDispatcher("/html/student/paymentSuccessful.jsp").forward(req,resp);
        }else {
            resp.sendRedirect("index");
    }
    }
}
