package com.ydt.admin.bean;

import java.sql.Date;

public class ExamPlan {
    private Integer examId;

    private String title;

    private String teaId;

    private Date examDate;

    private String examText;

    public ExamPlan(Integer examId, String title, String teaId, String examText, Date examDate) {
        this.examId = examId;
        this.title = title;
        this.teaId = teaId;
        this.examDate = examDate;
        this.examText = examText;
    }

    public Integer getExamId() {
        return examId;
    }

    public void setExamId(Integer examId) {
        this.examId = examId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getTeaId() {
        return teaId;
    }

    public void setTeaId(String teaId) {
        this.teaId = teaId == null ? null : teaId.trim();
    }

    public Date getExamDate() {
        return examDate;
    }

    public void setExamDate(Date examDate) {
        this.examDate = examDate;
    }

    public String getExamText() {
        return examText;
    }

    public void setExamText(String examText) {
        this.examText = examText == null ? null : examText.trim();
    }
}