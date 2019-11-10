<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="<%=path %>/admin/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/admin/js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>

</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="${pageContext.request.contextPath }/jsp/index.jsp">首页</a></li>
			<li><a href="#">数据表</a></li>
			<li><a href="#">基本内容</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">

			
			<ul class="toolbar1">
				<li><span><img src="<%=path %>/admin/images/t05.png" /></span>设置</li>
			</ul>

		</div>
		<table class="tablelist">
			<thead>
				<tr>
					<th><input name="" type="checkbox" value="" checked="checked" /></th>
					<th>商品名称<i class="sort"><img src="<%=path %>/admin/images/px.gif" /></i></th>
					<th>所属分类</th>
					<th>价格</th>
					<th>商品详情</th>
					<th>商品图片</th>
					<th>商品状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>

<c:forEach items="${splist }" var="shangpin" varStatus="status">
<tr>
	<td><input name="" type="checkbox" value="" /></td>
	<td>${shangpin.getPname() }</td>
	<td>${shangpin.getCategory() }</td>
	<td>${shangpin.getPrice() }</td>
	<td>${shangpin.getPdetails() }</td>
	<td>${shangpin.getPicture() }</td>
	<td>
	
	<c:if test="${shangpin.getState()=='pass'}">已审核</c:if>
	<c:if test="${shangpin.getState()=='wait'}">未审核</c:if>
	</td>
	<td>
	<a href="<%=path%>/ShangPinServlet?method=queryById&pdId=${shangpin.getId() }" class="tablelink">查看</a>		
	<a href="<%=path%>/ShangPinServlet?method=update&pdId=${shangpin.getId() }" class="tablelink"> 修改</a>
	<a href="<%=path%>/ShangPinServlet?method=delete&pdId=${shangpin.getId() }" class="tablelink"> 删除</a>
	
	 </td>
</tr>
</c:forEach>			
	</tbody>
</table>
		<div class="pagin">
			<div class="message">
				共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="javascript:;"><span
						class="pagepre"></span></a></li>
				<li class="paginItem current"><a href="javascript:;">1</a></li>
				<li class="paginItem"><a href="javascript:;">2</a></li>
				<li class="paginItem"><a href="javascript:;">3</a></li>
				<li class="paginItem"><a href="javascript:;">4</a></li>
				<li class="paginItem"><a href="javascript:;">5</a></li>
				<li class="paginItem more"><a href="javascript:;">...</a></li>
				<li class="paginItem"><a href="javascript:;">10</a></li>
				<li class="paginItem"><a href="javascript:;"><span
						class="pagenxt"></span></a></li>
			</ul>
		</div>


		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span><a></a>
			</div>

			<div class="tipinfo">
				<span><img src="images/ticon.png" /></span>
				<div class="tipright">
					<p>是否确认对信息的修改 ？</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
					
				</div>
			</div>

			<div class="tipbtn">
				<input name="" type="button" class="sure" value="确定" />&nbsp; <input
					name="" type="button" class="cancel" value="取消" />
			</div>

		</div>




	</div>

	<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>