
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
<%@page session="true"%>
<html class="no-js" lang="">
 <head>
 <link rel="icon" type="image/gif" sizes="16x16" href="${pageContext.request.contextPath}/resourcesNew/img/newMobiMIcon.svg"/>
 
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">		
				
	<meta name="description" content="The fastest growing online payment service in Malaysia. Easy to View Transaction Details">	
	<meta name="title" content="Mobiversa | Online Payment Service | Mobile Payment Malaysia">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">		
	<meta charset="UTF-8">		
	<title>Mobi</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="mobile-web-app-capable" content="yes">
<sec:csrfMetaTags />
<script src="${pageContext.request.contextPath}/resourcesNew/js/urlHide.js"></script>
 <script type="text/javascript">
	history.pushState(null, null, "");
	window.addEventListener('popstate', function() {
		history.pushState(null, null, "");
	});
</script>

	 <link href="${pageContext.request.contextPath}/resourcesNew1/dist/css/pages/styleLogin.css" rel="stylesheet">
	     <link href="${pageContext.request.contextPath}/resourcesNew1/dist/css/style.css" rel="stylesheet">
     
    <link href="${pageContext.request.contextPath}/resourcesNew1/dist/css/pages/dashboard1.css" rel="stylesheet">
 <style>
html, body {margin: 0; height: 100%; overflow: hidden}


.errormsg h5{
color:red !important;
font:bold !important;
text-align: center !important;

}
</style>
 <script lang="JavaScript">
	$('CaptchaDiv').click(function() {

		GenerateCaptcha();
	});



	function emptyCheck() {

		var str1 = removeSpaces(document.getElementById('txtCompare1').value);

		var str2 = removeSpaces(document.getElementById('txtCompare2').value);

		if (str2 == null && str2 == '') {
			alert("please enter Security Code");
			document.getElementById("txtCompare2").focus();
			return false;
		}
	}
	/* Validating Captcha Function */
	function ValidCaptcha() {
		//alert("captcha matches1212121212:");
		var str1 = removeSpaces(document.getElementById('txtCompare1').value);

		var str2 = removeSpaces(document.getElementById('txtCompare2').value);

		if (str2 == null && str2 == '') {
			alert("please enter Security Code");
			//document.getElementById("txtCompare2").focus();
			return false;
		}

		else if (str2 == null || str2 != str1) {
			alert("Wrong Security Code ");
			/* document.getElementById("txtCompare2").value = '';
			document.getElementById("txtCompare2").focus(); */
			return false;
		} else if (str1 == str2) {
			//alert("Captcha Matches:");
			return true;
		}
	}

	/* Remove spaces from Captcha Code */
	function removeSpaces(string) {
		return string.split(' ').join('');
	}

	function test() {
		$('#txtCompare1').bind("cut copy paste", function(e) {
			e.preventDefault();
			alert("cut,copy & paste not allowed");
		});
		
		$('#CaptchaDiv').bind("cut copy paste", function(e) {
			e.preventDefault();
			alert("cut,copy & paste not allowed");
		});

	}
</script>
<script type="text/javascript">
	// DO GET RegenerateCaptcha
	//${_csrf.parameterName}=${_csrf.token}

	/* var csrfParameter = $("meta[name='_csrf_parameter']").attr("content");
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	var csrfToken = $("meta[name='_csrf']").attr("content"); */

	function regenerateCaptcha() {
		//alert("check captcha");
		
		var csrfParameter = $("meta[name='_csrf_parameter']").attr("content");
		var csrfHeader = $("meta[name='_csrf_header']").attr("content");
		var csrfToken = $("meta[name='_csrf']").attr("content");

		//var txtCompare1 = document.getElementById("txtCompare1").value;
		var txtCompare1 = removeSpaces(document.getElementById('txtCompare1').value);
		//alert("check authent: " + txtCompare1 + " " + csrfToken);
		var data = {};
		data[csrfParameter] = csrfToken;
		data[txtCompare1] = txtCompare1;
		//alert("check captcha");
		$
				.ajax({
					type : "GET",
					
					contentType : "application/json",
					url : window.location + "generate/regenerateCaptcha",
					//data : JSON.stringify(myJSON),
					/* data : {
						"txtCompare1" : $("#txtCompare1").val(),
						
					}, */
					data : data,
					//contentType : "application/json; charset=utf-8",
					ContentType: "application/x-www-form-urlencoded; charset=UTF-8",
					dataType : "json",
					success : function(result) {
						//alert("status of Captcha:...."+result.status);
						if (result.status == "Done") {
							//alert(result.data);
							document.getElementById("txtCompare1").value = result.data;
							document.getElementById("CaptchaDiv").innerHTML=result.data;
							document.getElementById("txtCompare2").value = '';

						} else if (result.status == "errorMsg") {

							return false;

						}
					},
					error : function(data, status, er) {
						alert("error: " + data + " status: " + status + " er:"
								+ er);
						window.location.href = '${pageContext.request.contextPath}/auth/loginerror';
						form.submit;
						return true;
					}
				});
	}
</script>
<script type="text/javascript">
	// DO GET
	function ajaxGet() {
	
		//alert("check captcha");
		$.ajax({
			type : "GET",
			url : window.location + "generate/generateCaptcha",
			ContentType: "application/x-www-form-urlencoded; charset=UTF-8",
			success : function(result) {
				if (result.status == "Success") {
					//alert(result.data);
					document.getElementById("txtCompare1").value = result.data;
					document.getElementById("CaptchaDiv").innerHTML=result.data;

				} else {
					$("#txtCompare1").html("<strong>Error</strong>");
					console.log("Fail: ", result);
				}
			},
			error : function(data, status, er) {
				alert("error: " + data + " status: " + status + " er:" + er);
				/* window.location.href ='${pageContext.request.contextPath}/auth/loginerror' ;
					form.submit; */
				return true;
			}
		});
	}
</script>
 <script type="text/javascript">


function forgotPwd()
{

		window.location = "${pageContext.request.contextPath}/forgotpwd/forgotPwdByUser";
		form.submit;
		return true;
   
};
</script> 

<script type="text/javascript">
	
    /* var d = new Date();
    var month = d.getMonth()+1;
    var year=d.getFullYear();
    var date=d.getDate()-1;
    
    var today=date+"/"+month+"/"+year;
    
    time=d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
    today=date+"/"+month+"/"+year+" "+time;
   alert(today); */
	
	

	function deletegeneratedCaptcha() {
		//alert("enter for delete captcha after submit")
		$.ajax({
					type : "GET",
					contentType : "application/json",
					url : window.location + "generate/deleteValidatedCaptcha",
					//data : JSON.stringify(myJSON),
					data : {
						"txtCompare1" : $("#txtCompare1").val(),
						//"txtCompare2" : today,

					},
					contentType : "application/json; charset=utf-8",

					dataType : "json",
					success : function(result) {
						//alert("status of Captcha:...."+result.status);
						if (result.status == "Success") {
							//alert(result.data);
							//document.getElementById("txtCompare1").value = result.data;
							return true;
						} else {

							return false;

						}
					},
					error : function(result, status, er) {
						alert("error: " + data + " status: " + status + " er:"
								+ er);
						window.location.href = '${pageContext.request.contextPath}/auth/loginerror';
						form.submit;
						return true;
					}
				});

	}
</script>
<script type="text/javascript">
	function submitform() {
		document.formId.submit();
	}
</script>
<script language="javascript" type="text/javascript">
    function submitDetailsForm() {
    //alert("submit logout form");
       document.getElementById("formId").submit();
    }
</script>

<script language="javascript" type="text/javascript">
$("#btnValid").on('click', function(){
alert("jdkfjdkfj");
    ValidateCaptcha().done(function(data){
         if(data.status == "Success")
            return true;
         else
			return false;
    })
});

</script>
<script language="javascript" type="text/javascript">

function ValidatehiddenCaptcha(){
alert("ValidatehiddenCaptcha");
var result = document.getElementById("hiddenCaptcha").value;
//alert("ddsfddfdffdsdffsd"+ result);

	if(result != "false"){
		alert("true");
	 return true;
	}else{
		alert("flase");
		return false;
	}

}
</script>
<script language="javascript" type="text/javascript">

    function testing() {
    
    alert("submit logout form");
    /*   var tt = ValidateCaptcha(); */
    
    
    
    var tt = ValidateCaptcha();
      //alert("tt : "+tt);
     /*  if(tt){
      	alert("submit logout form ss");
      	return true;
      }else{
      	alert("submit logout form ff");
		return false;      
      } */
      var ttt = ValidatehiddenCaptcha();
     // alert("ttrrr : "+ttt);
      if(ttt){
      	alert("submit logout form sss");
      	return true;
      }else{
      	alert("submit logout form fff");
		return false;      
      }
    }
</script>


 <script type="text/javascript">

 

<script language="javascript" type="text/javascript">
function testing1()
{
alert("status of Captcha:....testing1()");
//var t=true;
var result = false;
$.ajax({
						type : "GET",
						contentType : "application/json",
						url : window.location + "generate/validateCaptcha",
						//data : JSON.stringify(myJSON),
						data : {
							"txtCompare1" : removeSpaces(document.getElementById('txtCompare1').value),
							 "txtCompare2" : $("#txtCompare2").val(), 
							 "username" : $("#username").val() 
						},
						//data : myJSON,
						// data: { data: myJSON },

						/* data: JSON.stringify({
						txtCompare1 : $("#txtCompare1").val(),
						txtCompare2 : $("#txtCompare2").val()
						}), */
						//data: "txtCompare1=" + $("#txtCompare1").val() + "&txtCompare2=" + $("#txtCompare1").val(),
						contentType : "application/json; charset=utf-8",
						//mimeType : 'application/json',
						//data : formData,
						async: false,
						dataType : "json",
						success : function(result)
						 {
							//alert("status of Captcha:...."+result.status);
							//var result = false;
							if (result.status == "Success") 
							{
								//alert("check succes"+result.data);
								//deletegeneratedCaptcha();
								//result = true;
								//t = true;
								document.getElementById("hiddenCaptcha").value = true;
								//alert("check succes : "+document.getElementById("hiddenCaptcha").value);
								return true;

							} 
							 else if (result.status == "errorMsg") 
							 {

								alert("Invalid Credentials...!");
								document.getElementById("hiddenCaptcha").value = false;
								var username = document.getElementById("useranme").value;
								var password = document.getElementById("password").value;
								window.location = '/MobiversaAdmin/auth/login/error';
								//"${pageContext.request.contextPath}/j_spring_security_logout
								//window.location = '/MobiversaAdmin/j_spring_security_logout';
								//submitDetailsForm();
								
								//window.location = "logoutnew.jsp";
								//result = false;
								//t = false;
								//alert("errorMsg  : "+document.getElementById("hiddenCaptcha").value);
								return false;

							}
							else if (result.status == "Fail") 
							 {

								alert("Empty Fields does not allow here...!");
								document.getElementById("hiddenCaptcha").value = false;
								window.location = '/MobiversaAdmin/auth/login/errorCaptcha';
								//"${pageContext.request.contextPath}/j_spring_security_logout
								//window.location = '/MobiversaAdmin/j_spring_security_logout';
								//submitDetailsForm();
								
								//window.location = "logoutnew.jsp";
								//result = false;
								//t = false;
								//alert("errorMsg  : "+document.getElementById("hiddenCaptcha").value);
								return false;

							}
							
							return result;
						},
						error : function() {
							//alert("Invalid Credentials");
							document.getElementById("hiddenCaptcha").value = false;
							//result = false;
							return false;
						}
					});
//alert("result 1234567890: "+document.getElementById("hiddenCaptcha").value);
return result;

}
</script>


<script type="text/javascript">
	// DO POST
	function ValidateCaptcha() {
		alert("validating captcha");

		/* var obj = {
			txtCompare1 : $("#txtCompare1").val(),
			txtCompare2 : $("#txtCompare2").val()
		};
		var myJSON = JSON.stringify(obj); */

		/* alert("validate captcha " + $("#txtCompare1").val() + " "
					+ $("#txtCompare2").val()); */

		var captcha1 = removeSpaces(document.getElementById('txtCompare1').value);
		var captcha2 = document.getElementById("txtCompare2").value;

		//alert(captcha1 == captcha2);
		if (captcha2 == null && captcha2 == '') 
		{
			alert("please enter Security Code");
			document.getElementById("txtCompare2").focus();
			return false;
		} 
		else if (captcha2 == null || captcha1 != captcha2) 
		{
			alert("Wrong Security Code ");
			document.getElementById("txtCompare2").value = '';
			document.getElementById("txtCompare2").focus();
			return false;
		}
		//alert(obj)
		//alert("url: "+window.location + "generate/generateCaptcha1");
		else if (captcha1 == captcha2)
		 {
			//alert("capthca matched");
			//var t = true;
			
			var t = testing1();
			
			//alert("var r"+t);
			return t;
		}
	}
</script>
<script type="text/javascript">
 

        function onclickTab(e) {
            var KeyID = e.keyCode;
            if (KeyID == 9) {
               
                txtCompare2.focus();
                return false;
            }
        }
 
    </script>

	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 

</head>



<body class="loginBg login-bg" onload="return ajaxGet();" id="body" name="body"  oncontextmenu="return false">
	
	<div class="container">
	<section class="login-content">
	<%-- <img src="${pageContext.request.contextPath}/resourcesNew1/assets/MobiNewWhite.png"
	id="mobiLogoImg" alt="MobiLogo"> --%>
		
		<div class ="loginCard">
			
		<div class="login-box loginContent">

		<img src="${pageContext.request.contextPath}/resourcesNew1/assets/MobiBlueLogo.png"
	id="mobiLogoImg" alt="MobiLogo"> 

				
				<form data-parsley-validate name='loginForm' class="login-form"
				action="<c:url value='/j_spring_security_check' />?sdfweirukwioer=${_csrf.token}" method='POST'
				name="form1" onsubmit="return ValidatehiddenCaptcha();">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}">


				<div class="login-head login-header"">

						<h2>Login</h2>
						
						
				</div>
				<style>
			.login-header h2 { 
			 padding-top:5px;  color:#0f5ea8;padding-left:20px; font-weight: 600; }
			</style>
				<div class="input-field col s12 m12 l12">
					
					<i class="material-icons prefix">person</i>
					<input type="text" id="username" class="username"
						placeholder="UserName" name="username"
						style="border-bottom: 1.5px solid #e89b23 !important;"><span
						> </span>
				</div>

				<div class="input-field col s12 m12 l12">
					
					<i class="material-icons prefix">lock</i>
					<input type="password" id="password" class="username"
						placeholder="Password" name="password" onkeydown="return onclickTab(event);"
						style="border-bottom: 1.5px solid #e89b23 !important;"><span
						> </span>
				</div>
				
				<!-- <div style="text-align: right;" class="input-field col s12 m12 l12">
					<i style="font-size:18px !important;color: #005baa;" class="material-icons">lock_open</i>
					 <a style="color: #005baa;font-weight:500;text-decoration:underline;" href="#" onclick="forgotPwd()">Forgot Password</a>					
				</div>  -->

				
				<div class="captchacontent" style="margin-bottom:10px;float:left;width:100% !important">
				<div class="labeldiv" style="float:left; width:60% !important" >
				 <label for ="CaptchaDiv" id="CaptchaDiv" style="float:left;width:90% !important" 
                 onclick="return test();"></label>		
				</div>
				
				
				
				<div class="btndiv" style="float:left; width:40%;">
				<button style="float:left; width:80%;" type="button" id="btnrefresh"
						 class="captchButton" value="recaptcha"
						name="txtCompare1" onclick="return regenerateCaptcha();"
						style="align: center">Regenerate Captcha</button>
				</div>
				</div>
				
				<!-- <div class="errormsg"><h6>INVALID USERNAME OR PASSWORD</h6></div> 
				<p color="red" id="error" value=""></p> -->
				
				<input type="hidden" align="center" id="txtCompare1" 
					name="txtCompare1" placeholder="" readonly onclick="return test();"	/>	

				<input type="text" align="center" 
					id="txtCompare2" 
					name="txtCompare2" placeholder="Enter Captcha" required
					style="align: center; text-align: center; 
					border-bottom: 1.5px solid #e89b23 !important;
					font: 25px verdana, arial, sans-serif; font-style: italic;"
					
					/>


				
				<div class="desccard">
					<a href="#"><span>To prevent spam and automated extraction <br/>of data from websites</span>
					</a>
				</div>

				
					<button type="submit" name="submit" id="btnValid"
						class="loginBtn"
						onclick="return testing()" onclick="this.disabled = true">Login</button>
					<br>
				
				
				
				


				
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
					
					<input type="hidden" name="hiddenCaptcha" id="hiddenCaptcha"
					value="false" />
	

			</form>
			

		</div>
		</div>

		<form
			action="${pageContext.request.contextPath}/j_spring_security_logout"
			method="post" id="formId" name="formId">
			
			
			  
			  <input type="hidden" name="link-logout" id="link-logout" value=""/>
				 
             
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

		</form>


	</section>

</div>



	<!-- JS -->


	<script
		src="${pageContext.request.contextPath}/resourcesNew/js/jquery-2.1.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resourcesNew/js/essential-plugins.js"></script>
	<script
		src="${pageContext.request.contextPath}/resourcesNew/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resourcesNew/plugins/pace.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resourcesNew/js/main.js"></script>


	<div class="visible-xs visible-sm extendedChecker"></div>


</body>
</html>