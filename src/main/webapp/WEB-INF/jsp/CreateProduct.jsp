<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CreateProduct</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<div class="container">
<form:form action="createproduct.controller" method="post" modelAttribute="product" enctype="multipart/form-data">
	<div style="width:300px">
	  <label class="form-label">產品名稱</label>
	  <form:input path="prodName" class="form-control"/>
	</div>
	<div style="width:300px">
	  <form:label path="price" class="form-label">產品價格</form:label>
	  <form:input path="price" class="form-control"/>
	</div>
	<div style="width:300px">
	  <form:label path="descript" class="form-label">產品描述</form:label>
	  <form:input path="descript" class="form-control"/>
	</div>
	<div style="width:300px">
	  <form:label path="stock">產品庫存</form:label>
	  <form:input path="stock" class="form-control"/>
	</div>
	<div style="width:300px">
	  <label class="form-label">產品種類</label><br>
	  飼料<form:radiobutton path="category" value="飼料"/>
	  罐頭<form:radiobutton path="category" value="罐頭"/>
	  零食<form:radiobutton path="category" value="零食"/>
	  用品<form:radiobutton path="category" value="用品"/>
	</div><br>
	<div style="width:300px">
	  <label class="form-label">適合寵物類型</label><br>
	  狗<form:radiobutton path="petkind" value="狗"/>
	  貓<form:radiobutton path="petkind" value="貓"/>
	</div>
	<div style="width:300px"><br>
	    <label class="form-label">產品圖片</label>
<!-- 	    <input type="file" name="myFiles"> -->
	    
	    <input type="file" name="file" id="img_upload_file" multiple="multiple"  /> 
		<input type="hidden" name="img_upload_base" id="img_upload_base" />
		<label>圖片預覽</label> <img id="img_upload_show" style="width:280px"/>
	</div>
	<br>
	<input type="submit" class="btn btn-primary" name="create" value="新增">
</form:form>
</div>

<script>

$("#img_upload_file").change(function() {
    var file = this.files[0];
    var reader = new FileReader();
    reader.readAsDataURL(file);//呼叫自帶方法進行轉換
    reader.onload = function(e) {
        $("#img_upload_show").attr("src", this.result);//將轉換後的編碼存入src完成預覽
        $("#img_upload_base").val(this.result);//將轉換後的編碼儲存到input供後臺使用
    }; 
});
</script>

</body>
</html>