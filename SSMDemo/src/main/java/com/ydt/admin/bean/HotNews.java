package com.ydt.admin.bean;

import java.sql.Date;

public class HotNews {
    private Integer newsId;

    private String teaId;

    private String title;

    private Date newsDate;

    private String newsText;

    public HotNews(Integer newsId, String teaId, String title, String newsText, Date newsDate) {
        this.newsId = newsId;
        this.teaId = teaId;
        this.title = title;
        this.newsDate = newsDate;
        this.newsText = newsText;
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
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

    public Date getNewsDate() {
        return newsDate;
    }

    public void setNewsDate(Date newsDate) {
        this.newsDate = newsDate;
    }

    public String getNewsText() {
        return newsText;
    }

    public void setNewsText(String newsText) {
        this.newsText = newsText == null ? null : newsText.trim();
    }
}