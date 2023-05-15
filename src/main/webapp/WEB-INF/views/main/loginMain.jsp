<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Varda</title>
    <link rel="stylesheet" href="style_login.css" />
  </head>
  <body>
    <div id="mainContainer">
        <!-- header -->
      <header>
        <div id="logo">
            <img src="img/logo.jpg">
		    </div>
        <div class="menu-logout">
          <nav class="menuNav">
              <ul class="menu">
                  <li><a href="#"><img src="img/cart.png" alt="장바구니" class="cart"></a></li>
                  <li><a href="#"><img src="img/mypage.png" alt="마이페이지" class="mypage"></a></li>
                  <li><a href="main_logout.html"><img src="img/logout.png" alt="로그아웃" class="logout"></a></li>  
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
        </ul>
      </nav>
      <!-- sildeshow -->
      <div id="slideShow">
        <div id="slides">
          <img src="img/photo-1.jpg" alt="" />
          <img src="img/photo-2.jpg" alt="" />
          <img src="img/photo-3.jpg" alt="" />
          <button id="prev">&lang;</button>
          <button id="next">&rang;</button>
        </div>
      </div>
      <!-- 본문 -->
      <div id="contents">
        <div id="tabMenu">
          <input type="radio" id="tab1" name="tabs" checked />
          <label for="tab1">공지사항</label>
          <input type="radio" id="tab2" name="tabs" />
          <label for="tab2">신제품</label>

          <div id="notice" class="tabContent">
            <h2>공지사항</h2>
            <ul>
              <li>일부 지역 배송 지연 안내</li>
              <li>취소 및 환불 주의사항 안내</li>
              <li>제품 가격 인상 안내</li>
            </ul>
          </div>
          <div id="gallery" class="tabContent">
            <h2>신제품 소개</h2>
            <ul>
              <li><img src="img/img-1.jpg" /></li>
              <li><img src="img/img-2.jpg" /></li>
              <li><img src="img/img-3.jpg" /></li>
              <li><img src="img/img-1.jpg" /></li>
              <li><img src="img/img-2.jpg" /></li>
              <li><img src="img/img-3.jpg" /></li>
            </ul>
          </div>
        </div>
        <div id="links">
          <ul>
            <li>
                <p>
							<a href="#"> <span id="quick-icon1"></span> 할인이벤트 1
							</a>
						</p>
					</li>
            <li>
                <p>
							<a href="#"> <span id="quick-icon2"></span> 할인이벤트 2
							</a>
						</p>
					</li>
            <li>
                <p>
							<a href="#"> <span id="quick-icon3"></span> 할인이벤트 3
							</a>
						</p>
					</li>
          </ul>
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
    </div>
    <script src="slideshow.js"></script>
  </body>
</html>