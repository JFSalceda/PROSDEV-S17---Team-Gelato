package models;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author G301
 */
public class Post {
    private String title;
    private String author;
    private String description;
    private String date;
    private int id;

    public Post(int id, String title, String author, String description, String date) {
        this.id = id;
    	this.title = title;
        this.author = author;
        this.description = description;
        this.date = date;
    }

    public Post(String title, String author, String description, String date)
    {
    	this.title = title;
        this.author = author;
        this.description = description;
        this.date = date;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
