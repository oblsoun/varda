<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      
    <script>
        function execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수
    
                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
    
                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("sample6_extraAddress").value = extraAddr;
                    
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }
    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
    </script>
    <!-- 아이디/비밀번호 확인, 이메일 메소드-->
    <script>
        function checkCustomer(){
            var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
            var regExpName =/^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; /* var regExpName = /^[가-힣]+$/; */
            
            var regExpPhone1 = /^\d{3}$/; /*  minlength=3 maxlength=3 */
            var regExpPhone2 = /^\d{3,4}$/; /* minlength=3 maxlength=4 */
            var regExpPhone =/^\d{3}-\d{3,4}-\d{4}$/; /* phone 통합본 */
            
            
            // 변수선언
            var form = document.Customer; // form.Customer 을 form으로 지정
            var id = form.id.value;
            var name = form.name.value;
            var password1 = form.password1.value;
            var password2 = form.password2.value;
            var phone = form.phone1.value + "-"+form.phone2.value+"-"+form.phone3.value;
            var emailId = form.emailId.value;
            var emailDomain = form.domainInput.value;

            //정규표현식 검증
            if(!regExpId.test(id)){
                alert("아이디는 문자로 시작해야 합니다.")
                form.id.select();
                return;
            }
            if(!regExpName.test(name)){
                alert("이름은 한글 혹은 영문으로만 입력합니다.")
                form.name.select();
                return;
            }
            if(!regExpPhone.test(phone)){
                alert("연락처를 입력해주세요.")
                form.phone1.select();
                return;
            }
            //비밀번호와 비밀번호확인 값 일치 여부확인
            if(password1 != password2){
                alert("비밀번호가 일치하지 않습니다")
                form.password1.value="";
                form.password2.value="";
                form.password1.focus();
                return;
            }
            form.submit();
        }
        //[확인필요]아이디 중복확인
        function Id_Check(){
            var id = document.Customer.id_input;
            if(id.value==CustomerVO.C_ID){   // [수정 및 확인필요] DB에 연결한 ID정보로 중복확인
                alert("이미 가입한 회원입니다.")
            }
        }
        function displayDomain() {
            var inputVal = document.querySelector('#domainInput');
            var selectVal = document.querySelector('#domainSelect');

            if (selectVal.value === "직접입력") {
                inputVal.removeAttribute('disabled');
                inputVal.focus();
            } else {
                inputVal.value = selectVal.value;
                inputVal.disabled = true;
            }
        }

document.querySelector('#domainSelect').addEventListener("change", displayDomain);



    function displayDomain2(){
        var domainSelect = document.Customer.domainSelect.value; // = document.querySelect('#domainSelect');
        if(domainSelect==="직접입력"){
            document.Customer.domain.value=="";
            document.Customer.domain.focus();
        }else{
            document.Customer.domain.value=domainSelect;
        }
    }
    </script>
    <style>
        header{
            margin-top: 30px;
            margin-bottom: 90px;
        }
        a:hover{
            text-decoration: none;
            color: black;
        }
        #phone1, #phone2, #phone3{
            border: none;
        }
        .form-check-label{
            font-size:16px; 
            font-weight: bold;
        }
    </style>
</head>
<body>
    <header>
    <nav class="mx-auto" style="width: 200px;">
       <a href="#" class="display-1" >varda</a>
    </nav>
    </header> 

    <!--header 끝-->

    <div class="container" >
        <div class="display-4" align="center">
        <h3 class="col-md-4 col-md-offset-4">Join me!</h3>
        </div>

        <br><br>

        <form action="" name="Customer" method="post">

         <div style="margin-left: 300px;">
            <label for="username" class="text-muted">NAME</label>
        </div>
        <div align="center">
            <div class="col-md-6">
                <div class="form_group">
                    <div> 
                     <input type="text" class="form-control form-control-lg" name="name" required>
                    </div>
                 </div>
            </div> 
        </div>   
        <br> 
        <div style="margin-left: 300px;">
            <label for="username" class="text-muted">ID</label>
        </div>
        <div align="center">
            <div class="col-md-6">
                <div class="form_group">
                    <div class="input-group mb-3">
                     <input type="text" class="form-control form-control-lg" name="id" id="id_input" required>
                     <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="button" id="ID_Check" onclick="Id_Check()">ID 확인</button>
                     </div>
                    </div>
                 </div>
            </div> 
        </div>  
         <div style="margin-left: 300px;">
            <label for="username" class="text-muted">PASSWORD</label>
        </div>
        <div align="center">
            <div class="col-md-6">
                <div class="form_group" style="display: flex;" width="auto">
                        <input type="password" class="form-control mb-2 mr-sm-2" name="password1" placeholder="비밀번호 입력" required>
                        <input type="password" class="form-control mb-2 mr-sm-2" name="password2" placeholder="비밀번호 확인" required>
                 </div>
            </div> 
        </div>
        <br>
        <div style="margin-left: 300px;">
            <label for="username" class="text-muted">PHONE</label>
        </div>
        <div align="center">
            <div class="col-md-6">
                <div class="form_group" class="form-control form-control-lg" style="border: 0.01px solid gray; border-radius: 5px; padding-top: 7px; padding-left: 7px;">
                    <div style="display:flex" width="auto">
                        <input type="text" id = "phone1" class="form-control mb-2 mr-sm-2" value="010" minlength = "3" maxlength="3" required>
                        <input type="text" id = "phone2" class="form-control mb-2 mr-sm-2" minlength="3" maxlength="4" required>
                        <input type="text" id = "phone3" class="form-control mb-2 mr-sm-2" minlength="4" maxlength="4" required>
                    </div>
                 </div>
            </div>
            <br>
        </div>  
        <div style="margin-left: 300px;">
            <label for="username" class="text-muted">E-MAIL</label>
        </div>
        <div align="center">
            <div class="col-md-6">
                <div class="form_group">
                    <div style="display:flex;" width="auto"> 
                     <input type="text" class="form-control mb-2 mr-sm-2" name="emailId" id="emailId" required>
                     @<input name="domain" id="domainInput" class="form-control mb-2 mr-sm-2" value="">
                     <select id ="domainSelect" class="form-control col-sm-3" onchange="displayDomain2()">
                        <option value="naver.com">naver.com</option>
                        <option value="daum.net">daum.net</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="nate.com">nate.com</option>
                        <option value="" selected>직접입력</option>
                    </select>
                    </div>
                 </div>
            </div>  
        <p class="text-muted">주문 완료 시 이메일이 전송됩니다.</p>
        </div>
        <div style="margin-left: 300px;">
            <label for="username" class="text-muted">ADRRESS</label>
        </div>
        <div align="center">
            <div class="col-md-6">
                <div class="form_group">
                    
                    <div class="input-group mb-3">
                        <input type="text" class="form-control form-control-lg" id="postcode" placeholder="우편번호" aria-label="Recipient's username" aria-describedby="button-addon2" required>
                        <div class="input-group-append">
                             <button class="btn btn-outline-secondary" type="button" onclick="execDaumPostcode()">찾기</button>
                        </div>
                    </div>
                    <input class="form-control form-control-lg" type="text" id="address" placeholder="주소" required><br>
                    <div class="input-group">
                        <input type="text" aria-label="First name" class="form-control form-control-lg" id="detailAddress" placeholder="상세주소" required>
                        <input type="text" aria-label="Last name" class="form-control form-control-lg" id="extraAddress" placeholder="참고항목">
                    </div>
                </div>
            </div>
            <div class="form-check" style="margin-top: 20px;">
            <input class="form-check-input" type="checkbox">
            <label class="form-check-label" >
              개인정보 수집 및 이용 동의 <span class="badge badge-info">필수</span>
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="checkbox" name="exampleRadios" id="exampleRadios2" value="option2">
            <label class="form-check-label" for="exampleRadios2">
              마케팅 및 이벤트 정보 제공 동의
            </label>
        </div>          
            <br><br><br><br>
         <button type="submit" class="btn btn-outline-secondary btn-lg" onclick="checkCustomer()">Sign in</button>
        </div> 
        
        </form>
    </div> 

    <!--container 끝-->

<footer>
    <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
</footer>

</body>
</html>