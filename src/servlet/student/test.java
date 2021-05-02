package servlet.student;

import mapper.NewsMapper;
import model.Major;
import model.News;

import java.util.List;

public class test {
    public static void main(String[] args) {
      List<News> newsList =new NewsMapper().selectNews();

      System.out.print(newsList.get(2).getContent());
//        News news =new NewsMapper().selectById(2);
//        System.out.println(news.getTitle());

    }
}
