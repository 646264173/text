package servlet.student;

import mapper.ExamineeMapper;
import mapper.MajorMapper;
import mapper.RegistMapper;
import model.Examinee;
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

@WebServlet("/scoreQuery")
public class ScoreQueryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("sfzh")!=null){
            String idNumber = session.getAttribute("sfzh").toString();
            Regist regist = new RegistMapper().selectByIdNumber(idNumber);
            Examinee examinee = new ExamineeMapper().selectByRegistId(regist.getRegistId());
            if (examinee!=null){
                request.setAttribute("regist",regist );
                request.setAttribute("examinee",examinee );
                List<Integer> majorIdList = new ArrayList<>();
                List<Major> majorList = new ArrayList<>();
                majorIdList.add(regist.getFirstChoice());
                majorIdList.add(regist.getSecondChoice());
                majorIdList.add(regist.getThirdChoice());
                for (int i = 0; i <majorIdList.size() ; i++) {
                    majorList.add(new MajorMapper().selectById(majorIdList.get(i)));

                }
                request.setAttribute("majorList",majorList );
             }else {
                request.setAttribute("msg","请先进行报考缴费！完成考试后三个工作日内可查询成绩" );
                request.getRequestDispatcher("/html/student/msg.jsp").forward(request,response );
            }
            request.getRequestDispatcher("/html/student/scoreQuery.jsp").forward(request,response );

        }else {
            response.sendRedirect("index");
        }
    }
}
