package model;

import java.util.Date;

public class Pay {
    private int payId;
//订单编号
    private int registId;
//报名登记
    private int payType;
//续费方式
   private double price;
//金额
   private String remark;
//备注
   private String inputName;
//添加人
   private Date inputDate;
//添加时间
   private String updateName;
//修改人
   private Date updateDate;
//修改时间
   private  int delsign;
//   删除标记

    public int getPayId() {
        return payId;
    }

    public void setPayId(int payId) {
        this.payId = payId;
    }

    public int getRegistId() {
        return registId;
    }

    public void setRegistId(int registId) {
        this.registId = registId;
    }

    public int getPayType() {
        return payType;
    }

    public void setPayType(int payType) {
        this.payType = payType;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
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
