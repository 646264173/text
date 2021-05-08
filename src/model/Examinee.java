package model;

import java.util.Date;

public class Examinee {
    private String examineeId;
    //准考证号
    private  int registId;
    //报考id
    private String examRoomId;
    //考场id
    private String examineeDate;
//    考场日期
    private int seatIocation;
//    座位号
    private double chineseScore;
//    语文成绩
    private double mathScore;
//    数学成绩
    private double englishScore;
//    英语成绩
    private double totalScore;
//    总分
    private int acceptStatus;
//    录取状态
    private int acceptMajorId;
//    录取专业
    private String remark;
//    备注
    private String inputName;
//    添加人
    private String inputDate;
//    添加时间
    private String updateName;
//修改人
    private Date updateDate;
//删除标记
    private int delsign;


    public String getExamineeId() {
        return examineeId;
    }

    public void setExamineeId(String examineeId) {
        this.examineeId = examineeId;
    }

    public int getRegistId() {
        return registId;
    }

    public void setRegistId(int registId) {
        this.registId = registId;
    }

    public String getExamRoomId() {
        return examRoomId;
    }

    public void setExamRoomId(String examRoomId) {
        this.examRoomId = examRoomId;
    }

    public String getExamineeDate() {
        return examineeDate;
    }

    public void setExamineeDate(String examineeDate) {
        this.examineeDate = examineeDate;
    }

    public int getSeatIocation() {
        return seatIocation;
    }

    public void setSeatIocation(int seatIocation) {
        this.seatIocation = seatIocation;
    }

    public double getChineseScore() {
        return chineseScore;
    }

    public void setChineseScore(double chineseScore) {
        this.chineseScore = chineseScore;
    }

    public double getMathScore() {
        return mathScore;
    }

    public void setMathScore(double mathScore) {
        this.mathScore = mathScore;
    }

    public double getEnglishScore() {
        return englishScore;
    }

    public void setEnglishScore(double englishScore) {
        this.englishScore = englishScore;
    }

    public double getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(double totalScore) {
        this.totalScore = totalScore;
    }

    public int getAcceptStatus() {
        return acceptStatus;
    }

    public void setAcceptStatus(int acceptStatus) {
        this.acceptStatus = acceptStatus;
    }

    public int getAcceptMajorId() {
        return acceptMajorId;
    }

    public void setAcceptMajorId(int acceptMajorId) {
        this.acceptMajorId = acceptMajorId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getInputName() {
        return inputName;
    }

    public void setInputName(String inputName) {
        this.inputName = inputName;
    }

    public String getInputDate() {
        return inputDate;
    }

    public void setInputDate(String inputDate) {
        this.inputDate = inputDate;
    }

    public String getUpdateName() {
        return updateName;
    }

    public void setUpdateName(String updateName) {
        this.updateName = updateName;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}