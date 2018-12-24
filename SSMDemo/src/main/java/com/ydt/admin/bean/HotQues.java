package com.ydt.admin.bean;

import java.sql.Date;

public class HotQues {
    private Integer hotQuestionId;

    private String stuId;

    private String title;

    private Date hotQuestionDate;

    private String hotQuestionText;

    public HotQues(Integer hotQuestionId, String stuId, String title, String hotQuestionText, Date hotQuestionDate) {
        this.hotQuestionId = hotQuestionId;
        this.stuId = stuId;
        this.title = title;
        this.hotQuestionDate = hotQuestionDate;
        this.hotQuestionText = hotQuestionText;
    }

    public Integer getHotQuestionId() {
        return hotQuestionId;
    }

    public void setHotQuestionId(Integer hotQuestionId) {
        this.hotQuestionId = hotQuestionId;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId == null ? null : stuId.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getHotQuestionDate() {
        return hotQuestionDate;
    }

    public void setHotQuestionDate(Date hotQuestionDate) {
        this.hotQuestionDate = hotQuestionDate;
    }

    public String getHotQuestionText() {
        return hotQuestionText;
    }

    public void setHotQuestionText(String hotQuestionText) {
        this.hotQuestionText = hotQuestionText == null ? null : hotQuestionText.trim();
    }
}