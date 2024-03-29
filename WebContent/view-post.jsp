<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="models.Post"%>
    <%@page import="database.PostDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>Gelato</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="styles/normalize.css">
    <link rel="stylesheet" href="styles/skeleton.css">
    <link type="text/css" rel="stylesheet" href="styles/view-post-style.css">

    <link rel="icon" type="image/png" href="imgs/favicon.png">
    <%
    Post post;
    PostDAO postDAO = new PostDAO();
    int id = Integer.parseInt(request.getParameter("postid"));
    post = postDAO.getPost(id);
    %>
  </head>
  <body>
    <div id="nav-bar">
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="view-posts.jsp">Dessert Diary</a></li>
        <li><a href="create-entry.jsp">New Entry</a></li>
      </ul>
    </div>
    <div class="header-pic">
    </div>
    <div class="post-container">
			<h1 class="post-title"><%=post.getTitle()%></h1>
			<h4 class="post-author">by <span><%=post.getAuthor()%></span></h4>
			<p class="post-content"><%=post.getDescription()%></p>
    </div>
		<div class="comment-box">
      <h4>Comments</h4>
      <form class="comment-textbox" action = "CommentServlet" method = "post">
          <input type="text" class="textbox" placeholder="Let us know what you think." name = "comment"></input>
      </form>
      <div class="post-button" onclick="postComment()">Post</div>
      <ul class="posts">
      </ul>
		</div>
		<script src="js/jquery-2.2.3.min.js"></script>
    <script>
      function postComment(){
          var comment = $('.textbox').val();
          if(comment != ""){
              $('<li>').text(comment).appendTo('.posts');
              $('.textbox').val('');
          }
      }
    </script>
  </body>
</html>
