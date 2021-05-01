package model;

import java.util.Date;

public class ExamRoom {
    private int examRoomId;
    //考场编号
    private String examRoomAddress;
//    考场地点
    private int containNumber;
//    容纳人数
    private String remark;
//    备注
    private String inputName;
//    增加人
    private Date inputDate;
//    添加时间
    private String updateName;
//    修改人
    private Date updateDate;
//    修改时间
    private int delsign;
//    删除标记


    public int getExamRoomId() {
        return examRoomId;
    }

    public void setExamRoomId(int examRoomId) {
        this.examRoomId = examRoomId;
    }

    public String getExamRoomAddress() {
        return examRoomAddress;
    }

    public void setExamRoomAddress(String examRoomAddress) {
        this.examRoomAddress = examRoomAddress;
    }

    public int getContainNumber() {
        return containNumber;
    }

    public void setContainNumber(int containNumber) {
        this.containNumber = containNumber;
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

    public Date getInputDate() {
        return inputDate;
    }

    public void setInputDate(Date inputDate) {
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

    public int getDelsign() {
        return delsign;
    }

    public void setDelsign(int delsign) {
        this.delsign = delsign;
    }
}
