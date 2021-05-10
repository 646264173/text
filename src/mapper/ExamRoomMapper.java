package mapper;

import model.ExamRoom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ExamRoomMapper {
    private Connection conn;
    private PreparedStatement pstmt;
    public  ExamRoomMapper(){
        conn = new conn.Conn().getConn();
    }


    public ExamRoom selectById(int id) {

        try {
            pstmt = conn.prepareStatement("select  * from  exam_room_t where exam_room_id=? and delsign = 0");
            pstmt.setInt(1,id);
            ResultSet rs =pstmt.executeQuery();
            while (rs.next()){
                ExamRoom examRoom = new ExamRoom();
                examRoom.setExamRoomId(rs.getInt("exam_room_id"));
                examRoom.setExamRoomAddress(rs.getString("exam_room_address"));
                examRoom.setContainNumber(rs.getInt("contain_number"));
                examRoom.setRemark(rs.getString("remark"));
                examRoom.setInputName(rs.getString("input_name"));
                examRoom.setInputDate(rs.getDate("input_date"));
                examRoom.setUpdateName(rs.getString("update_name"));
                examRoom.setUpdateDate(rs.getDate("update_date"));
                return examRoom;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
               return null;

    }

}
