package servlet.student;

import mapper.ExamRoomMapper;
import mapper.ExamineeMapper;
import mapper.MajorMapper;
import mapper.RegistMapper;
import model.ExamRoom;
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
@WebServlet("/print")
public class PrintServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("sfzh") != null){
            String idNumber = session.getAttribute("sfzh").toString();
            Regist regist = new RegistMapper().selectByIdNumber(idNumber);
            Examinee examinee = new ExamineeMapper().selectByRegistId(regist.getRegistId());
            if (examinee != null){
                if (examinee.getExamRoomId() !=0) {
                    ExamRoom examRoom = new ExamRoomMapper().selectById(examinee.getRegistId());
                    Major major = new MajorMapper().selectById(regist.getFirstChoice());
                    req.setAttribute("regist", regist);
                    req.setAttribute("examinee", examinee);
                    req.setAttribute("examRoom", examRoom);
                    req.setAttribute("major", major);
                    req.getRequestDispatcher("/html/student/printingZKZ.jsp").forward(req, resp);


                }else {
                    req.setAttribute("msg","请等待教务进行排考！排考后方可打印准考证！");
                    req.getRequestDispatcher("/html/student/msg.jsp").forward(req,resp);
                }
            }else {
                req.setAttribute("msg","请先进行报考续费！续费完成后方可打印准考证！");
                req.getRequestDispatcher("/html/student/msg.jsp").forward(req,resp);
            }

        }else {
            resp.sendRedirect("index");
        }
    }
}
