<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성 페이지</title>
<link rel="stylesheet" href="css/reviewWrite.css">
</head>
<body>
    <!-- header -->
    <header>
        <nav class="mx-auto" style="width: 200px;">
           <a href="#" class="display-1" >varda</a>
        </nav>
    </header>  
    <!--header 끝!-->
    <div class="review-write">
       <form action="reviewList" method="post">
           <h2>REVIEW</h2>
           <table>
               <colgroup>
               <col style="width:100px" />
               <col style="width:200px" />
               </colgroup>
                   <thead>
                       <tr>
                  <th scope="col" colspan="2"></th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td><span></span><a href="product.html"> <img src="img/img-1.jpg" width="200px" height="200px" alt="이미지"></span></a></td>
                           <td><span><a href="product.html">내추럴 블랑 히아루로닉 크림</span></a></td>
                       </tr>
                   </tbody>
           </table>
           <br><br><br>
           <div class="form-check form-check-inline">
               <strong>발림성 &nbsp;&nbsp;&nbsp; </strong>
               <input class="form-check-input" type="radio" name="applyScore" id="inlineRadio1" value="5">
               <label class="form-check-label" for="inlineRadio1">발림성이 좋아요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="applyScore" id="inlineRadio2" value="3">
               <label class="form-check-label" for="inlineRadio2">보통이에요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="applyScore" id="inlineRadio3" value="1">
               <label class="form-check-label" for="inlineRadio3">발림성이 아쉬워요</label>
           </div><br><br>
           <div class="form-check form-check-inline">
               <strong>자극도 &nbsp;&nbsp;&nbsp; </strong>
               <input class="form-check-input" type="radio" name="stimulationScore" id="inlineRadio1" value="5">
               <label class="form-check-label" for="inlineRadio1">자극없이 순해요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="stimulationScore" id="inlineRadio2" value="3">
               <label class="form-check-label" for="inlineRadio2">보통이에요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="stimulationScore" id="inlineRadio3" value="1">
               <label class="form-check-label" for="inlineRadio3">자극이 느껴져요</label>
           </div><br><br>
           <div class="form-check form-check-inline">
               <strong> 만족도 &nbsp;&nbsp;&nbsp;  </strong>
               <input class="form-check-input" type="radio" name="satisfactionScore" id="inlineRadio1" value="5">
               <label class="form-check-label" for="inlineRadio1">추천하고 싶어요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="satisfactionScore" id="inlineRadio2" value="3">
               <label class="form-check-label" for="inlineRadio2">보통이에요</label>
           </div>
           <div class="form-check form-check-inline">
               <input class="form-check-input" type="radio" name="satisfactionScore" id="inlineRadio3" value="1">
               <label class="form-check-label" for="inlineRadio3">제품이 아쉬워요</label>
           </div><br><br>
           <div class="textArea">
               <label for="text"><strong>전체적인 후기</strong>
               <textarea class="form-control" name="content" cols="145" rows="5" placeholder="제품에 대한 솔직한 평가를 남겨주세요." id="text"></textarea></label>
           </div>
           <div class="review-btn">
<!--                <button onclick="reviewWrite()" class="write-btn">리뷰 작성 완료</button> -->
               <button onclick="location.href='${pageContext.servletContext.contextPath}/review/reviewList'" class="write-btn">뷰 작성 완료</button>
           </div>
        </form>
    </div>
<!-- <script> -->
<!-- //    const reviewWrite = () => { -->
<!-- //       location.href = "reviewList"; -->
<!-- //    } -->
<!-- </script> -->
<!--     <script src="js/review.js"></script>
   
    <script>
function fSum()
{
 with( document.myform )
 {
  var num = 0;

  for( i=0; i<rdo.length; i++ )
  {
   if( rdo[i].checked == true )
   {
    num = eval(rdo[i].value);
   }
  }

  if( num>0 )
  {
   var total = 0;

   for( j=1; j<=num; j++ )
   {
    total += j;
   }
   sum.value = total;
  }
 }
}
</script>
 -->
</body>
</html>