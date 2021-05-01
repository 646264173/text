package model;

import java.util.Date;

public class Major {
    private int majorId;
    //    专业id
    private String majorName;
    //    专业名称
    private int registNumber;
    //    招人人数
    private int tuition;
    //    学费
    private String remark;
    //    备注
    private String inputName;
    // 添加人
    private Date inputDate;
    //添加时间
    private String updateName;
    //修改人
    private Date updateDate;
    //修改时间
    private int delsign;
//删除标记

    public int getMajorId() {
        return majorId;
    }

    public void setMajorId(int majorId) {
        this.majorId = majorId;
    }

    public String getMajorName() {
        return majorName;
    }

    public void setMajorName(String majorName) {
        this.majorName = majorName;
    }

    public int getRegistNumber() {
        return registNumber;
    }

    public void setRegistNumber(int registNumber) {
        this.registNumber = registNumber;
    }

    public int getTuition() {
        return tuition;
    }

    public void setTuition(int tuition) {
        this.tuition = tuition;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getInputName(String input_name) {
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
