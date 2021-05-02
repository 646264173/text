package mapper;

import model.Pay;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PayMapper {
    private Connection conn;
    private PreparedStatement pstmt;
    public  PayMapper(){
        conn = new conn.Conn().getConn();
    }

    public Pay selectByRegistId(int registId){
       try {
           pstmt =conn.prepareStatement("select  * from pay_t where regist_id=? and delsign = 0");
           pstmt.setInt(1,registId);
           ResultSet rs = pstmt.executeQuery();
           while (rs.next()){
               Pay pay = new Pay();
               pay.setPayId(rs.getInt("pay_id"));
               pay.setRegistId(rs.getInt("regist_id"));
               pay.setPayType(rs.getInt("pay_type"));
               pay.setPrice(rs.getDouble("price"));
               pay.getRemark(rs.getString("remark"));
               pay.getInputName(rs.getString("input_name"));
               pay.getInputDate(rs.getString("input_date"));
               pay.getUpdateName(rs.getDate("update_name"));
               pay.getUpdateDate(rs.getDate("update_date"));
               pay.getDelsign(rs.getInt("delsign"));
               return pay;
           }
       }catch (SQLException e){
           e.printStackTrace();
       }
      return null;
    }

    public boolean insert(Pay pay){
        try {
            pstmt =conn.prepareStatement("insert into pay_t(regist_id,pay_type,price,remark,input_name,input_date) values (?,?,?,?,?,?)");
            pstmt.setInt(1,pay.getRegistId());
            pstmt.setInt(2,pay.getPayType());
            pstmt.setDouble(3,pay.getPrice());
            pstmt.setString(4,pay.getRemark());
            pstmt.setString(5,pay.getInputName());
            pstmt.setString(6,pay.getInputDate());
            int rs =pstmt.executeUpdate();
            if (rs == 1){
                return  true;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

}
