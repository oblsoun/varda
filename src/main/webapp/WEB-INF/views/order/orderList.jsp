<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�ֹ����</title>
    <link rel="stylesheet" href="orderlist.css">
</head>
<body>
    <header>
        <nav class="mx-auto" style="width: 200px;">
           <a href="#" class="display-1" >varda</a>
        </nav>
    </header> 
<!--header ��!-->

<div class="container">
<form action="review/reviewForm" method="post">
	<table class="table table-hover" id="tablemiddle">
	    <thead>
	      <tr>
	        <th scope="col">�ֹ���ȣ</th>
	        <th scope="col" class="productimage"></th>
	        <th scope="col" class="description">��ǰ����</th>
	        <th scope="col">����</th>
	        <th scope="col">����</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <th scope="row">1</th>
	        <td><img src="/img/sample1.jpg"></td>
	        <td>�޵��� ���俣���� ���� ���� ���� ��ȹ (1+1)</td>
	        <td><span style="font-weight: bold;">11,900</span>��</td>
	        <td><button onclick="saveReq()" class="btn btn-secondary">����</button></td>
	      </tr>
	      <tr>
	        <th scope="row">2</th>
	        <td><img src="/img/sample1.jpg"></td>
	        <td>�޵��� ���俣���� ���� ���� ���� ��ȹ (1+1) ��¼�� ��¼�� ��� ��ǰ���� ������ �̷� �����Դϴٿ� </td>
	        <td><span style="font-weight: bold;">11,900</span>��</td>
	        <td><button onclick="saveReq()" class="btn btn-secondary">����</button></td>
	      </tr>
	      <tr>
	        <th scope="row">3</th>
	        <td><img src="/img/sample1.jpg"></td>
	        <td>ª�� ��¼�� ��¼�� ����</td>
	        <td><span style="font-weight: bold;">11,900</span>��</td>
	        <td><button onclick="saveReq()" class="btn btn-secondary">����</button></td>
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
<!--footer ����!-->
    <footer>
        <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
    </footer>
    
</body>
</html>