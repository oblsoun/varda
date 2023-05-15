<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 페이지</title>
<link rel="stylesheet" href="css/cart.css">
</head>
<body>
    <!-- header -->
    <header>
        <nav class="mx-auto" style="width: 200px;">
           <a href="#" class="display-1" >varda</a>
        </nav>
    </header>  
    <!--header 끝!-->
    <div class="cart">
        <h2>SHOPPING CART</h2>
        <table>
            <colgroup>
            <col style="width:110px" />
            <col style="width:110px" />
            <col style="width:80px" />
            <col style="width:80px" />
            <col style="width:80px" />
            <col style="width:80px" />
            </colgroup>
                <thead>
                    <tr>
                    <th>체크</th>
					<th scope="col" colspan="2">상품정보</th>
					<th scope="col">상품금액</th>
					<th scope="col">수량</th>
					<th scope="col">합계</th>
					<th scope="col">삭제</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="checkbox" name="pChecked" value="1"></td>
                        <td><span><a href="product.html"> <img src="#" alt="이미지"></span></a></td>
                        <td><span><a href="product.html">내추럴 히아루로닉 크림</span></a></td>
                        <td><span>116,620원</span><br></td>
                        <td><span>1개</span><br></td>
                        <td><span>116,620원</span><br></td>
                        <td><button type="submit" class="delbtn" onclick="delList()"><b>X</b>삭제</button></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" name="pChecked" value="2"></td>
                        <td><span><a href="product.html"> <img src="#" alt="이미지"></span></a></td>
                        <td><span><a href="product.html">내추럴 히아루로닉 크림</span></a></td>
                        <td><span>116,620원</span><br></td>
                        <td><span>1개</span><br></td>
                        <td><span>116,620원</span><br></td>
                        <td><button type="submit" class="delbtn" onclick="delList()"><b>X</b>삭제</button></td>
                    </tr>	
                 </tbody>
        </table>
        <div class="total" span><strong>총 주문 금액: 233,240원</strong></span>
        <div class="mainbtn">
            <button type="submit" class="orderbtn left" onclick="shoppingContinue()">쇼핑 계속하기</button>
            <button type="submit" class="orderbtn right" onclick="orderSuccess()">주문하기</button>
        </div>
    </div>
    <script src="js/cart.js"></script>
</body>
</html>