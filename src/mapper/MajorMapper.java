package mapper;

import model.Major;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
//查询全部专业信息
public class MajorMapper {
    private Connection conn;
    private PreparedStatement pstmt;

    public MajorMapper(){
        conn = new conn.Conn().getConn();
    }

    public List<Major> selectAll(){
        List<Major> majorList = new ArrayList<>();
        try{
            pstmt = conn.prepareStatement("select * from major_t where delsign = 0 ");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()){
                Major major = new Major();
                major.setMajorId(rs.getInt("major_id"));
                major.setMajorName(rs.getString("major_name"));
                major.setRegistNumber(rs.getInt("regist_number"));
                major.setTuition(rs.getInt("tuition"));
                major.setRemark(rs.getString("remark"));
                major.getInputName (rs.getString("input_name"));
                major.setInputDate(rs.getDate("input_date"));
                major.setUpdateName(rs.getString("update_name"));
                major.setUpdateDate(rs.getDate("update_date"));
                major.setDelsign(rs.getInt("delsign"));
                majorList.add(major);
            }
            return majorList;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return  null;
}
}