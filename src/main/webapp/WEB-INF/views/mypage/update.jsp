<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ȸ����������</title>
    <link rel="stylesheet" href="mypage.css">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
    
                    // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                    // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                    var addr = ''; // �ּ� ����
                    var extraAddr = ''; // �����׸� ����
    
                    //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                    if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                        addr = data.roadAddress;
                    } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                        addr = data.jibunAddress;
                    }
    
                    // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
                    if(data.userSelectedType === 'R'){
                        // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                        // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                        if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
                        document.getElementById("sample6_extraAddress").value = extraAddr;
                    
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }
    
                    // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
    </script>
</head>
<body>
    <header>
    <nav class="mx-auto" style="width: 200px;">
        <div id="logo">
            <img src="/img/logo.jpg">
		</div>
    </nav>
    </header> 

    <!--header ��-->

    <div class="container" >
        <div class="text-right">
            <h5><a href="#">�ֹ� ��� Ȯ�� &raquo;</a></h5>
        </div>

        <div class="text-left">
        <h3 class="col-md-4 col-md-offset-4">ȸ����������</h3>
        </div>
        <hr class="hr-14">
        <br><br>

        <form action="#" method="post" style="margin-left: 80px;">

         <div style="margin-left: 30px;">
            <label for="username" class="text-muted">NAME</label>
        </div>
        <div>
            <div class="col-md-6">
                <div class="form_group">
                    <div> 
                     <input type="text" class="form-control form-control-lg" disabled>
                    </div>
                 </div>
            </div> 
        </div>   
        <br> 
        <div style="margin-left: 30px;">
            <label for="username" class="text-muted">ID</label>
        </div>
        <div>
            <div class="col-md-6">
                <div class="form_group">
                    <div> 
                     <input type="text" class="form-control form-control-lg" disabled>
                    </div>
                 </div>
            </div> 
        </div>  
        <br> 
        <div style="margin-left: 30px;">
            <label for="username" class="text-muted">PASSWORD</label>
        </div>
        <div>
            <div class="col-md-6">
                <div class="form_group">
                    <div> 
                     <input type="password" class="form-control form-control-lg">
                    </div>
                 </div>
            </div> 
        </div>  
        <br> 
        <div style="margin-left: 30px;">
            <label for="username" class="text-muted">PHONE</label>
        </div>
        <div>
            <div class="col-md-6">
                <div class="form_group">
                    <div> 
                     <input type="text" class="form-control form-control-lg" >
                    </div>
                 </div>
            </div> 
        </div>  
        <br> 
        <div style="margin-left: 30px;">
            <label for="username" class="text-muted">E-MAIL</label>
        </div>
        <div>
            <div class="col-md-6">
                <div class="form_group">
                    <div> 
                     <input type="text" class="form-control form-control-lg">
                    </div>
                   
                 </div>
            </div>  
        </div>
        <br>
        <div style="margin-left: 30px;">
            <label for="username" class="text-muted">ADRRESS</label>
        </div>
        <div>
            <div class="col-md-6">
                <div class="form_group">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control form-control-lg" id="postcode" placeholder="�����ȣ" aria-describedby="button-addon2" required>
                            <div class="input-group-append">
                              <button class="btn btn-outline-secondary" type="button" onclick="execDaumPostcode()">ã��</button>
                            </div>
                          </div>
                        <input class="form-control form-control-lg" type="text" id="address" placeholder="�ּ�"><br>
                        <div class="input-group">
                            <input type="text" aria-label="First name" class="form-control form-control-lg" id="detailAddress" placeholder="���ּ�" required>
                            <input type="text" aria-label="Last name" class="form-control form-control-lg" id="extraAddress" placeholder="�����׸�">
                          </div>
                 </div>
            </div>
            <br><br>
        <div style="float: right; margin-right: 150px;">
         <div class="btn-group btn-group-lg" role="group">
            <button type="submit" class="btn btn-secondary">����</button>
            <button type="submit" class="btn btn-secondary">���</button>
          </div>
        </div> 
        </div>           
        </form>
    </div> 

    <!--container ��-->

<footer>
    <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
</footer>

</body>
</html>