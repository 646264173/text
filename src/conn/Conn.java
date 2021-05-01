package conn;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * 数据库连接类
 */
public class Conn {
    public Connection getConn(){
        try {
            //解析jbdc驱动
            Class.forName("com.mysql.jdbc.Driver");
            //定义数据库地址
            String url = "jdbc:mysql://localhost:3306/dzsystem?useUnicode=true&characterEncoding=utf-8";
            //定义数据库用户名
            String user = "root";
            //定义数据库密码
            String password = "root";
            //与数据库进行连接，连接成功回返湖连接对象
            Connection conn = DriverManager.getConnection(url,user,password);
            //将连接对象返回
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
