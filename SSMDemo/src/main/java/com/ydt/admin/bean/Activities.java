package com.ydt.admin.bean;

import java.sql.Date;

public class Activities {
    private Integer actiId;

    private String teaId;

    private String title;

    private Date actiDate;

    private String actiText;

    private String actiDetail;

    private String actiNotice;

    public Activities(Integer actiId, String teaId, String title, String actiText, Date actiDate) {
        this.actiId = actiId;
        this.teaId = teaId;
        this.title = title;
        this.actiDate = actiDate;
        this.actiText = actiText;
    }

    public Activities(Integer actiId, String teaId, String title, String actiText, String actiDetail, String actiNotice, Date actiDate) {
        this.actiId = actiId;
        this.teaId = teaId;
        this.title = title;
        this.actiDate = actiDate;
        this.actiText = actiText;
        this.actiDetail = actiDetail;
        this.actiNotice = actiNotice;
    }

    public String getActiText() {
        return actiText;
    }

    public void setActiText(String actiText) {
        this.actiText = actiText == null ? null : actiText.trim();
    }

    public String getActiDetail() {
        return actiDetail;
    }

    public void setActiDetail(String actiDetail) {
        this.actiDetail = actiDetail == null ? null : actiDetail.trim();
    }

    public String getActiNotice() {
        return actiNotice;
    }

    public void setActiNotice(String actiNotice) {
        this.actiNotice = actiNotice == null ? null : actiNotice.trim();
    }

    public Integer getActiId() {
        return actiId;
    }

    public void setActiId(Integer actiId) {
        this.actiId = actiId;
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

    public Date getActiDate() {
        return actiDate;
    }

    public void setActiDate(Date actiDate) {
        this.actiDate = actiDate;
    }
}