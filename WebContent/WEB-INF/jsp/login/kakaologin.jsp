<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<a id="kakao-login-btn"> 
	<img src="Resources/img/login/kakao_login_medium_narrow.png" width="33.4%" />
	</a>
<script type='text/javascript'>


Kakao.init('bbc472c6440c31bc59f137714d4bf555');


$("#kakao-login-btn").on("click", function(){
    //1. 로그인 시도
    Kakao.Auth.login({
        success: function(authObj) {
         
          //2. 로그인 성공시, API 호출
          Kakao.API.request({
            url: '/v2/user/me',
            success: function(res) {
              console.log(res);
              var id = res.id+"!kakao";
			  scope : 'account_email';
			alert('로그인성공');
              location.href="https://localhost:8086/LoginForm";
		

              
        }
          })
          console.log(authObj);
          var token = authObj.access_token;
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
        
}) //


</script>