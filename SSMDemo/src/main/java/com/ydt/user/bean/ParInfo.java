package com.ydt.user.bean;


import java.sql.Date;

public class ParInfo {
    private String stuId;

    private String name;

    private String stuName;

    private Date birth;

    private String stuClass;

    private String address;

    private String tel;

    private String email;

    private String qqnum;

    private String picture;

    public ParInfo() {
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId == null ? null : stuId.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName == null ? null : stuName.trim();
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getStuClass() {
        return stuClass;
    }

    public void setStuClass(String stuClass) {
        this.stuClass = stuClass == null ? null : stuClass.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getQqnum() {
        return qqnum;
    }

    public void setQqnum(String qqnum) {
        this.qqnum = qqnum == null ? null : qqnum.trim();
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }

    @Override
    public String toString() {
        return "ParInfo{" +
                "stuId='" + stuId + '\'' +
                ", name='" + name + '\'' +
                ", stuName='" + stuName + '\'' +
                ", birth=" + birth +
                ", stuClass='" + stuClass + '\'' +
                ", address='" + address + '\'' +
                ", tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", qqnum='" + qqnum + '\'' +
                ", picture='" + picture + '\'' +
                '}';
    }
}