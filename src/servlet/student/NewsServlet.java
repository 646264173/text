package servlet.student;

import mapper.NewsMapper;
import model.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//新闻跳转类

@WebServlet("/news")
public class NewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String newsId = request.getParameter("newsId");
        if (newsId !=null && !newsId.equals("")){
            try {
                News news =new NewsMapper().selectById(Integer.valueOf(newsId));
                if (news !=null){
                    request.setAttribute("news",news);
                }else {
                    request.setAttribute("msg","查询不到该新闻id！");
                    request.getRequestDispatcher("/html/student/msg.jsp").forward(request,response);
                }
            }catch (Exception e){
                request.setAttribute("msg","新闻id只能为数字！");
                request.getRequestDispatcher("/html/student/msg.jsp").forward(request,response);
            }
            request.getRequestDispatcher("/html/student/applicationNotes.jsp").forward(request,response);
        }else {
            request.setAttribute("msg","新闻id部能为空");
            request.getRequestDispatcher("/html/student/msg.jsp").forward(request,response);
        }


    }
}
