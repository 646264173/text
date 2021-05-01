package mapper;

import model.News;
import model.Regist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsMapper {
private Connection conn;
private PreparedStatement pstmt;

public  NewsMapper(){
    conn = new conn.Conn().getConn();
}

public List<News> selectNews(){
    List<News> newsList =new ArrayList<>();
    try {
        pstmt =conn.prepareStatement("select * from news_t where delsign=0 and news_status = 2");
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()){
            News news =new News();
            news.setNewsId(rs.getInt("news_id"));
            news.setTitle(rs.getString("title"));
            news.setContent(rs.getString("content"));
            news.setNewsType(rs.getInt("news_type"));
            news.setPublishDate(rs.getString("publish_date"));
            news.setNewsStatus(rs.getInt("news_status"));
            news.setRemark(rs.getString("remark"));
            news.setInputName(rs.getString("input_name"));
            news.setInputDate(rs.getString("input_date"));
            news.setUpdateName(rs.getString("update_name"));
            news.setUpdateDate(rs.getString("update_date"));
            news.setDelsign(rs.getInt("delsign"));
            newsList.add(news);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

return  newsList;
}




    public News selectById ( int id){
        try {
            //传入sql语句
            pstmt = conn.prepareStatement("select * from news_t where news_id =? and delsign=0 and news_status=2");
            pstmt.setInt( 1, id);
            //执行查询操作返回结果集
            ResultSet rs = pstmt.executeQuery();
            //循环结果集
            while (rs.next()) {
                //实例化新闻对象
                News news = new News();
                //向新闻对象中设置
                news.setNewsId(rs.getInt("news_id"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setNewsType(rs.getInt("news_type"));
                news.setPublishDate(rs.getString("publish_date"));
                news.setNewsStatus(rs.getInt("news_status"));
                news.setRemark(rs.getString("remark"));
                news.setInputName(rs.getString("input_name"));
                news.setInputDate(rs.getString("input_date"));
                news.setUpdateName(rs.getString("update_name"));
                news.setUpdateDate(rs.getString("update_date"));
                news.setUpdateDate(rs.getString("update_date"));
                news.setDelsign(rs.getInt("delsign"));
                //全部设置完毕之后，添加进新闻列表中
                return news;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


}





