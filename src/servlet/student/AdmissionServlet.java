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

@WebServlet("/admissionQuery")
public class AdmissionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("sfzh")!=null){
            String idNumber = session.getAttribute("sfzh").toString();
            Regist regist = new RegistMapper().selectByIdNumber(idNumber);
            Examinee examinee = new ExamineeMapper().selectByRegistId(regist.getRegistId());
            if (examinee!=null){
                Major major = new MajorMapper().selectById(examinee.getExamRoomId());
                request.setAttribute("regist ",regist );
                request.setAttribute("examinee",examinee );
                request.setAttribute("major",major );
                request.getRequestDispatcher("/html/student/admissionQuery.jsp").forward(request,response );

            }else {
                request.setAttribute("msg","请先进行报考缴费！考试出成绩后两个工作日内可查询录取结果" );
                request.getRequestDispatcher("/html/student/msg.jsp").forward(request,response );
            }
        }else {
            response.sendRedirect("index");
        }
    }
}
