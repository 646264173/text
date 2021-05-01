package mapper;

import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper {
    private Connection conn;
    private PreparedStatement pstmt;

    public  UserMapper(){
        conn = new conn.Conn().getConn();
    }
    public boolean valiUser(User user){
        try {
            pstmt = conn.prepareStatement("select * from sys_user_t where login_name=? and login_password=? and delsign=0");
            pstmt.setString(1,user.getLoginName());
            pstmt.setString(2,user.getLoginPassword());
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;

    }
}
