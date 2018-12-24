package com.ydt.admin.bean;

import java.sql.Date;

public class TeaInfo {
    private String teaId;

    private String name;

    private Date birth;

    private String class1;

    private String class2;

    private String class3;

    private String courseName;

    private String qq;

    private String tel;

    private String email;

    private String position;

    private String picture;

    private String selfInfo;

    private String glory;

    private String power;

    private Integer infSendType;

    public String getTeaId() {
        return teaId;
    }

    public void setTeaId(String teaId) {
        this.teaId = teaId == null ? null : teaId.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getClass1() {
        return class1;
    }

    public void setClass1(String class1) {
        this.class1 = class1;
    }

    public String getClass2() {
        return class2;
    }

    public void setClass2(String class2) {
        this.class2 = class2;
    }

    public String getClass3() {
        return class3;
    }

    public void setClass3(String class3) {
        this.class3 = class3;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName == null ? null : courseName.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture == null ? null : picture.trim();
    }

    public String getSelfInfo() {
        return selfInfo;
    }

    public void setSelfInfo(String selfInfo) {
        this.selfInfo = selfInfo == null ? null : selfInfo.trim();
    }

    public String getGlory() {
        return glory;
    }

    public void setGlory(String glory) {
        this.glory = glory == null ? null : glory.trim();
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public Integer getInfSendType() {
        return infSendType;
    }

    public void setInfSendType(Integer infSendType) {
        this.infSendType = infSendType;
    }

    @Override
    public String toString() {
        return "TeaInfo{" +
                "teaId='" + teaId + '\'' +
                ", name='" + name + '\'' +
                ", birth=" + birth +
                ", class1='" + class1 + '\'' +
                ", class2='" + class2 + '\'' +
                ", class3='" + class3 + '\'' +
                ", courseName='" + courseName + '\'' +
                ", qq='" + qq + '\'' +
                ", tel='" + tel + '\'' +
                ", email='" + email + '\'' +
                ", position='" + position + '\'' +
                ", picture='" + picture + '\'' +
                ", selfInfo='" + selfInfo + '\'' +
                ", glory='" + glory + '\'' +
                ", power='" + power + '\'' +
                ", infSendType=" + infSendType +
                '}';
    }
}