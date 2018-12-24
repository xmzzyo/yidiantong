package com.ydt.common.bean;

public class Auth {
    private String id;

    private String password;

    private String answer1;

    private String anwser2;

    private String anwser3;

    public Auth() {
    }

    public Auth(String id, String password) {
        this.id = id;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getAnswer1() {
        return answer1;
    }

    public void setAnswer1(String answer1) {
        this.answer1 = answer1 == null ? null : answer1.trim();
    }

    public String getAnwser2() {
        return anwser2;
    }

    public void setAnwser2(String anwser2) {
        this.anwser2 = anwser2 == null ? null : anwser2.trim();
    }

    public String getAnwser3() {
        return anwser3;
    }

    public void setAnwser3(String anwser3) {
        this.anwser3 = anwser3 == null ? null : anwser3.trim();
    }

    @Override
    public String toString() {
        return "Auth{" +
                "id='" + id + '\'' +
                ", password='" + password + '\'' +
                ", answer1='" + answer1 + '\'' +
                ", anwser2='" + anwser2 + '\'' +
                ", anwser3='" + anwser3 + '\'' +
                '}';
    }
}