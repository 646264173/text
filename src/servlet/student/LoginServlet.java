package servlet.student;

import mapper.RegistMapper;
import mapper.UserMapper;
import model.Regist;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet("/loginUser")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     int isUser =Integer.valueOf(request.getParameter("isUser"));
     String sfzh = request.getParameter("sfzh");
     String password = request.getParameter("password");
     boolean isLogin = false;
     if (isUser == 1){
         Regist regist = new Regist();
         regist.setIdentityNumber(sfzh);
         regist.setPassword(password);
         isLogin = new RegistMapper().valiUser(regist);
     }
     if (isUser ==2){
         User user = new User();
         user.setLoginName(sfzh);
         user.setLoginPassword(password);
         isLogin = new UserMapper().valiUser(user);
     }
     if(isLogin){
         HttpSession session = request.getSession();
         session.setAttribute("sfzh",sfzh);
         response.getWriter().write("true");
     }else{
         response.getWriter().write("false");
     }
    }
}
