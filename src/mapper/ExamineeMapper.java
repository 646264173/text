package mapper;

import model.Examinee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ExamineeMapper {
    private Connection conn;
    private PreparedStatement pstmt;
    public  ExamineeMapper(){
        conn = new conn.Conn().getConn();
    }
    public boolean insert(Examinee examinee){
   try{
       pstmt = conn.prepareStatement("insert into examinee_t(regist_id,exam_room_id,examinee_date,seat_location,chinese_score,math_score,english_score,total_score,accept_status,accept_major_id,remark,input_name,input_date) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
       pstmt.setInt(1,examinee.getRegistId());
       pstmt.setString(2,examinee.getExamRoomId());
       pstmt.setString(3, examinee.getExamineeDate());
       pstmt.setInt(4,examinee.getSeatIocation());
       pstmt.setDouble(5,examinee.getChineseScore());
       pstmt.setDouble(6,examinee.getMathScore());
       pstmt.setDouble(7,examinee.getEnglishScore());
       pstmt.setDouble(8,examinee.getTotalScore());
       pstmt.setInt(9,examinee.getAcceptStatus());
       pstmt.setInt(10,examinee.getAcceptMajorId());
       pstmt.setString(11,examinee.getRemark());
       pstmt.setString(12,examinee.getInputName());
       pstmt.setString(13,examinee.getInputDate());
       int rs = pstmt.executeUpdate();
   if (rs == 1) {
       return true;
   }
   } catch (SQLException e){
       e.printStackTrace();
   }
   return false;
    }

}
