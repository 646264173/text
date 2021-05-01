package servlet.student;
//提示消息跳转

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/msg")
public class MsgServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String msg = request.getParameter("msg");
if (msg !=null && !msg.equals("")){
    request.setAttribute("msg",msg);
    request.getRequestDispatcher("/html/student/msg.jsp").forward(request,response);

}else {
    response.sendRedirect("index");
}

    }
}
