<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 论坛发布页面 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<title>Insert title here</title>
</head>

<style>
.title_box{ 
width: 100%; 

overflow: hidden; 
display: flex; 
} 
.title_left{width: 100px;height: 40px;border: 1px solid red;
float: left;text-align: center; line-height:40px;font-family: "微软雅黑";font-size:13px;
border:none;} 
.title_right{width: 29px;height: 40px;border: 1px solid green;float: right;border:none;} 
.title_box input{width: 100%;font-family: "微软雅黑"; border:none;font-size:15px;height: 30px;margin-top: 6px;} 
.title_box textarea{width: 100%;font-family: "微软雅黑"; border:none;font-size:15px;} 


</style>
<body bgcolor="#FCFCFC">
<form action="">
<div class="title_box">
    <div class="title_left">物品名称</div>
    <input type="text" />
    <div class="title_right"></div>
</div>
<hr style="height:1px;border:none;border-top:1px solid #F0F0F0;width:95.5%;" />



<div class="title_box">
    <div class="title_left">拾到地点</div>
    <input type="text" />
    <div class="title_right"></div>
</div>
<hr style="height:1px;border:none;border-top:1px solid #F0F0F0;width:95.5%;" />

<div class="title_box">
    <div class="title_left">拾到时间</div>
    <input type="text" />
    <div class="title_right"></div>
</div>
<hr style="height:1px;border:none;border-top:1px solid #F0F0F0;width:95.5%;" />

<div class="title_box">
    <div class="title_left">联系人</div>
    <input type="text" />
    <div class="title_right"></div>
</div>
<hr style="height:1px;border:none;border-top:1px solid #F0F0F0;width:95.5%;" />

<div class="title_box">
    <div class="title_left">联系方式</div>
    <input type="text" />
    <div class="title_right"></div>
</div>
<hr style="height:1px;border:none;border-top:1px solid #F0F0F0;width:95.5%;" />

<div class="title_box">
    <div class="title_left">物品特征</div>
    <textarea name="theme" id="theme" cols="45" rows="5"></textarea>
    <div class="title_right"></div>
</div>
<hr style="height:1px;border:none;border-top:1px solid #F0F0F0;width:95.5%;" />



</form>
</body>
</html>