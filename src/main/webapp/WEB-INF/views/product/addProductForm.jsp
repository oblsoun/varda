<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!--<script type="text/javascript" src="./resources/js/validation.js"></script> 스크립트부분-->
<title>상품 등록</title>
</head>
<!--header부분-->
<header>
   <div id="MainHeader">
     <h1 class = "box_title-header" style ="text-align: center; margin: 0 auto">
     <a href = "#" id = "varda_Main">
       <img src = "img/varda_header.png" style="width:300px; height:250px;">
     </a>
   </h1>
 </div>
</header>
<body>
   <!--<jsp:include page="menu.jsp" /> 메뉴부분-->   
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">상품 등록</h1>
      </div>
   </div>
   <div class="container">
      <form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
         <div class="form-group row">
            <label class="col-sm-2">제품코드</label>
            <div class="col-sm-3">
               <input type="text" id="pdItem"  name="pdItem"  class="form-control" >
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">상품명</label>
            <div class="col-sm-3">
               <input type="text" id="pdName"  name="pdName" class="form-control" >
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">가격</label>
            <div class="col-sm-3">
               <input type="text" id="pdPrice"  name="pdPrice" class="form-control" >
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">태그</label>
            <div class="col-sm-3">
               <input type="text" id="pdTag"  name="pdTag" class="form-control" >
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">제품이미지</label>
            <div class="col-sm-3">
               <input type="file" name="pdImg" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">제품상세설명서</label>
            <div class="col-sm-3">
               <input type="file" name="pdSubImg" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2">제품사용설명서</label>
            <div class="col-sm-3">
               <input type="file" name="pdDescrip" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10 ">
               <input type="button" class="btn btn-primary" value="등록" onclick="CheckAddProduct()">
            </div>
         </div>
         </div>
      </form>
   </div>
</body>
</html>
