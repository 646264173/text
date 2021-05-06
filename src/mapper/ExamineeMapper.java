package mapper;

import model.Examinee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ExamineeMapper {
    private Connection conn;
    private PreparedStatement pstmt;

    public ExamineeMapper() {
        conn = new conn.Conn().getConn();
    }

    public boolean insert(Examinee examinee){
   try{
       pstmt = conn.prepareStatement("insert into examinee_t(regist_id,exam_room_id,examinee_date)");


   } catch (SQLException e) {
       e.printStackTrace();
   }
   return false;
    }

}
