package servlet.teacher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//session验证
@WebServlet("/teacherIndex")
public class TeaHomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session =request.getSession();
        if (session.getAttribute("sfzh")!=null){
            request.setAttribute("sessionTest","true");

        }
        request.getRequestDispatcher("/html/teacher/index.jsp").forward(request,response);
    }
}
