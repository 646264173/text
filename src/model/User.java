package model;

import java.util.Date;

public class User {
    private int id;
//唯一标识
    private String  loginName;
//登陆名称
    private String  loginPassword;
//密码
    private String userName ;
//姓名
    private String phone ;
//电话
    private String  remark;
//备注
    private String  inputName;
//添加人
    private Date inputNate ;
//添加时间
    private String updateName ;
//修改人
    private  Date updateDate;
//修改时间
    private  int delsign;
//删除标记


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public Date getInputNate() {
        return inputNate;
    }

    public void setInputNate(Date inputNate) {
        this.inputNate = inputNate;
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
