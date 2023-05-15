<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style_log.css"/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <title>제품 목록</title>
  <style>
    .제품사진{
      width: 300px;
      height: 200px;
      margin: 10px 0 0 5px;
      padding-bottom: 20px;
    }
    .num_nav_wrap{
      display: inline-block;
      vertical-align: top;
    }
    #product_page{
      font-size: 2.2em;
      margin-right: 20px;
      line-height: 100px;
      color: #000;
    }
    .prod_num_nav {
    margin-top: 20px;
    text-align: center;
    }
    .prod_num_nav{
      margin-top: 20px;
    }
    .edge_nav {
    margin-right: 6px;
    }
    .edge_nav {
    float: left;
    margin: 0 3px;
    width: 28px;
    height: 28px;
    text-align: center;
    color: transparent;
    font-size: 20px;
    line-height: 28px;
}
.prod_num_nav .number_wrap {
    float: left;
    overflow: hidden;
    padding-left: 5px;
    font-size: 14px;
    line-height: 27px;
    *zoom: 1;
}


  </style>
</head>
<body>
  <div id="mainContainer">
    <!-- header -->
    <h1 class = "box_title-logo" style ="margin-bottom:0;">
      <a href = "#" id = "varda_logo">
        <img src = "img/varda_logo.jpg" style="width:250px; height:120px;">
      </a>
    </h1>
    <header>
      <div id="logo">
        <img src="img/logo.jpg" alt="logo" style="width:220px; height:120px">
      </div>
      <div id="searchBox" class="search-container">
        <form method="get" action="#">
          <input type="text" placeholder="상품 검색">
          <i class="fas fa-search search-icon"></i>
          <button type="submit"><img src="img/search.png" alt="검색" width="30" height="25"></button>
        </form>
      </div>
      <div class="menu-logout">
        <nav class="menuNav">
            <ul class="menu">
                <li><a href="#"><img src="img/cart.png" alt="장바구니" class="cart" style="width:40px; height:40px;"></a></li>
                <li><a href="#"><img src="img/mypage.png" alt="마이페이지" class="mypage" style="width:30px; height: 30px;"></a></li>
            </ul>
        </nav>
      </div>
    </header>
  <nav class="topMenuNav">
    <ul id="topMenu">
      <li>
        <a href="#">All</a>
      </li>
      <li>
        <a href="#">Men/Women <span>▼</span></a>
        <ul>
          <li><a href="#">남성용</a></li>
          <li><a href="#">여성용</a></li>
        </ul>
      </li>
      <li><a href="#">Skin Type <span>▼</span></a>
        <ul>
          <li><a href="#">건성</a></li>
          <li><a href="#">지성</a></li>
          <li><a href="#">복합성</a></li>
        </ul>
      </li>
      <li>
        <a href="#">Product <span>▼</span></a>
        <ul>
          <li><a href="#">스킨</a></li>
          <li><a href="#">로션</a></li>
          <li><a href="#">수분크림</a></li>
          <li><a href="#">앰플 & 세럼</a></li>
          <li><a href="#">마스크팩</a></li>
          <li><a href="#">미스트</a></li>
        </ul>
      </li>
    </ul>
  </nav>
  <!-- 제품목록 부분-->

  <div class="container">
    <ul class="row">
      <li class="col-md-4" id="products">
        <img src="img/스킨1.jpg" class="제품사진">
        <h6><b>헤라옴므 에센스 스킨 125ml</b></h6>
        <p><b>#트러블케어</b></p>
      </li>
      <li class="col-md-4" id="products">
        <img src="img/로션1.jpg " class="제품사진">
        <h6><b>랩시리즈 데일리 레스큐 워터 로션 200ml</b></h6>
        <p><b>#트러블케어</b></p>
      </li>
      <li class="col-md-4" id="products">
        <img src="img/로션2.jpg " class="제품사진">
        <h6><b>헤라 옴므 에센스 인 에멜젼 110ml</b></h6>
        <p><b>#트러블케어 #미백</b></p>
      </li>
      <li class="col-md-4" id="products">
        <img src="img/로션3.jpg " class="제품사진">
        <h6><b>비오템 옴므 아쿠아틱 로션 애프터 쉐이브 200ml</b></h6>
        <p><b>#트러블케어</b></p>
      </li>
      <li class="col-md-4" id="products">
        <img src="img/스킨2.jpg " class="제품사진">
        <h6><b>아라미스 애프터쉐이브 스킨 200ml</b></h6>
        <p><b>#트러블케어 #진정성</b></p>
      </li>
      <li class="col-md-4" id="products">
        <img src="img/스킨3.jpg " class="제품사진">
        <h6><b>꽃을 든 남자 옴므 스킨 140ml </b></h6>
        <p><b>#트러블케어 #진정성</b></p>
      </li>
      <li class="col-md-4" id="products">
        <img src="img/로션4.jpg " class="제품사진">
        <h6><b>이니스프리 그린티 로션 포 맨 150ml</b></h6>
        <p><b>#트러블케어 #진정성</b></p>
      </li>
      <li class="col-md-4" id="products">
        <img src="img/스킨4.jpg " class="제품사진">
        <h6><b>이니스프리 그린티 스킨포 맨 150ml</b></h6>
        <p><b>#트러블케어 #진정성</b></p>
      </li>
      <li class="col-md-4" id="products">
        <img src="img/스킨5.jpg " class="제품사진">
        <h6><b>올드스파이스 애프터쉐이브 클래식 188ml</b></h6>
        <p><b>#트러블케어</b></p>
      </li>
    </ul>
  </div>

  <!-- 제품 하단 페이지 넘기기 -->
  <div class ="prod_num_nav">
    <div class="num_nav_wrap">
      <div class="number_wrap">
        <a href="#" id ="product_page" title="prev_page" onclick="javascript:movePage(-1); return false;" onmousedown="_trkEventLog('상품_페이지')"><i class="fas fa-chevron-left"></i></a>
        <a href="#" id="product_page" onclick="return false" class="num now_on" onmousedown="_trkEventLog('상품_페이지')">1</a>
        <a href="#" id="product_page" onclick="javascript:movePage(2); return false;" class="num" onmousedown="_trkEventLog('상품_페이지')">2</a>
        <a href="#" id="product_page" onclick="javascript:movePage(3); return false;" class="num" onmousedown="_trkEventLog('상품_페이지')">3</a>
        <a href="#" id="product_page" title="next_page" onclick="javascript:movePage(1); return false;" onmousedown="_trkEventLog('상품_페이지')"><i class="fas fa-chevron-right"></i></a>
      </div>
    </div>
  </div>
    <!-- footer -->
    <footer>
      <div id="bottomMenu">
        <ul>
          <li><a href="http://kibwagg.org" target="_blank">회사소개</a></li>
          <li><a href="#">회사위치</a></li>
          <li><a href="#">개인정보처리방침</a></li>
          <li><a href="#">자주묻는질문</a></li>
        </ul>
        <div id="sns">
          <ul>
            <li>
              <a href="#"><img src="img/sns-1.png" /></a>
            </li>
            <li>
              <a href="#"><img src="img/sns-2.png" /></a>
            </li>
            <li>
              <a href="#"><img src="img/sns-3.png" /></a>
            </li>
          </ul>
        </div>
      </div>
      <div id="company">
        <p>서울특별시 서초구 서초대로 74길 33</p>
      </div>
    </footer>
</body>
<script>
//   var productList = document.getElementById("product-list");
//   for (var i = 0; i < products.length; i++) { 
//     var product = products[i];
//     var li = document.createElement("li");
//     var img = document.createElement("img");
//     img.src = product.img;

//     //<h6> 요소 생성
//       var heading = document.createElement("h6");
//       heading.textContent = product.name;

//           // <ul> 요소 생성
//     var tagList = document.createElement("ul");
    
//     // 각 태그에 대해 반복
//     for (var j = 0; j < product.tags.length; j++) {
//       var tag = product.tags[j];
      
//       // <li> 요소 생성
//       var tagItem = document.createElement("li");
//       tagItem.textContent = tag;
      
//       // <li> 요소를 <ul> 요소에 추가
//       tagList.appendChild(tagItem);
//     }
    
//     // <li> 요소에 <img>, <h3>, <ul> 요소 추가
//     listItem.appendChild(img);
//     listItem.appendChild(heading);
//     listItem.appendChild(tagList);
    
//     // <li> 요소를 <ul> 요소에 추가
//     productList.appendChild(listItem);
//     }

// // 페이지 로드 후, 상품 목록을 동적으로 생성
//   window.onload = renderProductList;

  var currentPage=1;
  // 상품에 표시될 상품 수
  var ProductsPerPage=3; 
  // 전체상품 목록을 받아옴
  // var allProducts = getProduct();
  
  // 총 상품 갯수
  var totalItems=products.length; // var totalItems = allProducts.length;
  //전체 페이지수
  totalPages = Math.ceil(totalItems/ProductsPerPage) // products.length = 9 이므로, totalPages = 3 이다.

  function movePage(page){
    if(page==1 and currentPage >1){
      currentPage--;
    }else if(page>=2 and currentPage < maxPage):{
      currentPage++;
    }
    currentPage=page;
    loadProduct();
  }
  function loadProduct(){
    var startIndex = (currentPage-1)*ProductsPerPage;
    var endIndex = startIndex + ProductsPerPage;
    var productsToDisplay = products.slice(startIndex,endIndex) // startIndex ~ endIndex미만까지 새 배열(리스트)로 반환
  }
  var productHtml = '';
    for (var i = 0; i < productsToDisplay.length; i++) {
      var product = productsToDisplay[i];
      productHtml += '<li class="col-md-4">';
      productHtml += '<img src="' + product.img + '" class="제품사진">';
      productHtml += '<h6><b>'
      }
</script>
</html>