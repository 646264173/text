package utill;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    public String getStringDate(String dateFormart){
        Date date = new Date();
        DateFormat df =new SimpleDateFormat(dateFormart);
        return df.format(date);

    }
}
