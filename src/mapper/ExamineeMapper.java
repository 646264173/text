package mapper;


import model.Examinee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
       pstmt.setInt(2,examinee.getExamRoomId());
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

    public Examinee selectByRegistId(int registId){

            try {
                pstmt = conn.prepareStatement("select * from examinee_t where regist_id=? and  delsign = 0");
                pstmt.setInt(1, registId);
                ResultSet rs = pstmt.executeQuery();
                while (rs.next()) {
                    Examinee examinee = new Examinee();
                    examinee.setExamineeId(rs.getString("examinee_id"));
                    examinee.setRegistId(rs.getInt("regist_id"));
                    examinee.setExamRoomId(rs.getInt("exam_room_id"));
                    examinee.setExamineeDate(rs.getString("examinee_date"));
                    examinee.setSeatIocation(rs.getInt("seat_location"));
                    examinee.setChineseScore(rs.getDouble("chinese_score"));
                    examinee.setMathScore(rs.getDouble("math_score"));
                    examinee.setEnglishScore(rs.getDouble("english_score"));
                    examinee.setTotalScore(rs.getDouble("total_score"));
                    examinee.setAcceptStatus(rs.getInt("accept_status"));
                    examinee.setAcceptMajorId(rs.getInt("accept_major_id"));
                    examinee.setRemark(rs.getString("remark"));
                    examinee.setInputName(rs.getString("input_name"));
                    examinee.setInputDate(rs.getString("input_date"));
                    examinee.setUpdateName(rs.getString("update_name"));
                    examinee.setUpdateDate(rs.getDate("update_date"));
                    return examinee;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return null;
        }


    }



