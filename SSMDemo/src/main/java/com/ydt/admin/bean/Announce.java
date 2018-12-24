package com.ydt.admin.bean;

import java.sql.Date;

public class Announce {
    private Integer annId;

    private String teaId;

    private String title;

    private Date annDate;

    private String annText;

    public Announce() {
    }

    public Announce(Integer annId, String teaId, String title, String annText, Date annDate) {
        this.annId = annId;
        this.teaId = teaId;
        this.title = title;
        this.annDate = annDate;
        this.annText = annText;
    }

    public Integer getAnnId() {
        return annId;
    }

    public void setAnnId(Integer annId) {
        this.annId = annId;
    }

    public String getTeaId() {
        return teaId;
    }

    public void setTeaId(String teaId) {
        this.teaId = teaId == null ? null : teaId.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getAnnDate() {
        return annDate;
    }

    public void setAnnDate(Date annDate) {
        this.annDate = annDate;
    }

    public String getAnnText() {
        return annText;
    }

    public void setAnnText(String annText) {
        this.annText = annText == null ? null : annText.trim();
    }
}