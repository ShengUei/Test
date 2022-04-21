<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CreateProduct</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="/css/bootstrap.min.css" rel="stylesheet" />
  <link href="/css/now-ui-dashboard.css?v=1.6.0" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body class=" sidebar-mini " >

<div class="wrapper ">
    <div class="sidebar" data-color="orange">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="/productform.controller" class="simple-text logo-mini">
          <i class="fa-solid fa-house"></i>          
        </a>
        <a href="/productform.controller" class="simple-text logo-normal">
          Home
        </a>
        <div class="navbar-minimize">
          <button id="minimizeSidebar" class="btn btn-outline-white btn-icon btn-round">
            <i class="now-ui-icons text_align-center visible-on-sidebar-regular"></i>
            <i class="now-ui-icons design_bullet-list-67 visible-on-sidebar-mini"></i>
          </button>
        </div>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <div class="user">
          <div class="photo">
            <img src="../../assets/img/james.jpg" />
          </div>
          <div class="info">
            <a data-toggle="collapse" href="#collapseExample" class="collapsed">
              <span>
                James Amos
                <b class="caret"></b>
              </span>
            </a>
            <div class="clearfix"></div>
            <div class="collapse" id="collapseExample">
              <ul class="nav">
                <li>
                  <a href="#">
                    <span class="sidebar-mini-icon">MP</span>
                    <span class="sidebar-normal">My Profile</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="sidebar-mini-icon">EP</span>
                    <span class="sidebar-normal">Edit Profile</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="sidebar-mini-icon">S</span>
                    <span class="sidebar-normal">Settings</span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <ul class="nav">
          <li>
            <a href="/productform.controller">
              <i class="fa-solid fa-dog"></i>
              <p>Product</p>
            </a>
          </li>
       </ul>
      </div>
    </div>
     
<!--      ============================================= -->

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