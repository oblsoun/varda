<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ÁÖ¹®¸ñ·Ï</title>
    <link rel="stylesheet" href="orderlist.css">
</head>
<body>
    <header>
        <nav class="mx-auto" style="width: 200px;">
           <a href="#" class="display-1" >varda</a>
        </nav>
    </header> 
<!--header ³¡!-->

<div class="container">
<form action="review/reviewForm" method="post">
	<table class="table table-hover" id="tablemiddle">
	    <thead>
	      <tr>
	        <th scope="col">ÁÖ¹®¹øÈ£</th>
	        <th scope="col" class="productimage"></th>
	        <th scope="col" class="description">»óÇ°Á¤º¸</th>
	        <th scope="col">°¡°Ý</th>
	        <th scope="col">¸®ºä</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <th scope="row">1</th>
	        <td><img src="/img/sample1.jpg"></td>
	        <td>¸ÞµðÈú ÇÇÅä¿£ÀÚÀÎ °¢Áú ¾ÚÇÃ ´õºí ±âÈ¹ (1+1)</td>
	        <td><span style="font-weight: bold;">11,900</span>¿ø</td>
	        <td><button onclick="saveReq()" class="btn btn-secondary">¸®ºä</button></td>
	      </tr>
	      <tr>
	        <th scope="row">2</th>
	        <td><img src="/img/sample1.jpg"></td>
	        <td>¸ÞµðÈú ÇÇÅä¿£ÀÚÀÎ °¢Áú ¾ÚÇÃ ´õºí ±âÈ¹ (1+1) ¾îÂ¼±¸ ÀúÂ¼±¸ ±æ°Ô »óÇ°¸íÀÌ ÀÖÀ¸¸é ÀÌ·± ´À³¦ÀÔ´Ï´Ù¿ä </td>
	        <td><span style="font-weight: bold;">11,900</span>¿ø</td>
	        <td><button onclick="saveReq()" class="btn btn-secondary">¸®ºä</button></td>
	      </tr>
	      <tr>
	        <th scope="row">3</th>
	        <td><img src="/img/sample1.jpg"></td>
	        <td>Âª°Ô ¾îÂ¼±¸ ÀúÂ¼±¸ ¾ÚÇÃ</td>
	        <td><span style="font-weight: bold;">11,900</span>¿ø</td>
	        <td><button onclick="saveReq()" class="btn btn-secondary">¸®ºä</button></td>
	      </tr>
    	</tbody>
	</table>
</form>
</div> 

<script>
	const saveReq = () => {
		location.href = "review/reviewForm";
	}
</script>
<!--footer ½ÃÀÛ!-->
    <footer>
        <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
    </footer>
    
</body>
</html>