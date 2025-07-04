<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html class="no-js" lang="">
<link rel="icon" type="image/gif" sizes="16x16" href="${pageContext.request.contextPath}/resourcesNew/img/newMobiMIcon.svg"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobi</title>    
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <!-- <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script> -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
   
      
    <link href="${pageContext.request.contextPath}/resourcesNew1/assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resourcesNew1/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css" rel="stylesheet">
     
    <link href="${pageContext.request.contextPath}/resourcesNew1/assets/extra-libs/c3/c3.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resourcesNew1/dist/css/style.css" rel="stylesheet">
     
    <link href="${pageContext.request.contextPath}/resourcesNew1/dist/css/pages/dashboard1.css" rel="stylesheet">
	  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourcesNew1/assets/libs/pickadate/lib/themes/default.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourcesNew1/assets/libs/pickadate/lib/themes/default.date.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourcesNew1/assets/libs/pickadate/lib/themes/default.time.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourcesNew1/dataTable/dataTables.bootstrap4.min.css">	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourcesNew1/dataTable/dataTables.material.min.css">
	<link href='${pageContext.request.contextPath}/resourcesNew1/select2/dist/css/select2.min.css' rel='stylesheet' type='text/css'>	
  </head>

<body>
    <div class="main-wrapper mini-sidebar" id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin1" data-sidebartype="mini-sidebar" data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">     
      
      <header class="topbar">
        
        <nav>
          <div class="nav-wrapper">
            
            <a href="javascript:void(0)" class="brand-logo nav-toggle">
              <span class="icon">
               <i _ngcontent-ffe-c19="" class="material-icons icon-image-preview">menu</i>
              </span>
              
            </a>
             
            <ul class="left">
               
              <li class="hide-on-large-only" style="display:none !important;">
                <a href="javascript: void(0);" class="sidebar-toggle">
                  <span class="bars bar1"></span>
                  <span class="bars bar2"></span>
                  <span class="bars bar3"></span>
                </a>
              </li>
                 
            </ul> 
            <%--  <img src="${pageContext.request.contextPath}/resourcesNew1/assets/MobiNewWhite.png"
	id="mobiLogoCenterImg" alt="MobiLogo"> --%>
	
	<img src="${pageContext.request.contextPath}/resourcesNew1/assets/MobiBlueLogo.svg"
	id="mobiLogoCenterImg" alt="MobiLogo">
           
            <ul class="right"> 
        
        <li><a class="dropdown-trigger" href="javascript: void(0);" data-target="user_dropdown"> <i _ngcontent-ffe-c19="" class="material-icons icon-image-preview">more_vert</i></a>
        <ul id="user_dropdown" class="mailbox dropdown-content dropdown-user">
      <!--     <li>
            <div class="dw-user-box" style="background-color:#005baa;">
              
              <div class="u-text" style="margin:auto;display:table;">
                <h4 style="color:blue;font-size:12px;text-align:center;"><span style="padding:5px;background-color:#fff;border-radius:5px"> Merchant </span></h4> <br/>
                
                 
              </div>
            </div>
          </li> -->
          <li role="separator" class="divider"></li>
         <li><a href="${pageContext.request.contextPath}/superAgentProfile/agentDetails"><i class="material-icons">account_circle</i> Change Password</a></li>      
          <li><a href="#" id="link-logout"><i class="material-icons">power_settings_new</i> Logout</a></li>
		  
		   
		  
        </ul>
      </li>
    </ul>
   
  </div>
</nav>

<style>
.topbar nav .mailbox.dropdown-content { min-width: 240px; }
 .u-text {margin:auto;display:table; }
</style>
 
</header>

<aside class="left-sidebar">
<ul id="slide-out" class="sidenav">
<li>
    <ul class="collapsible">
     
      <li>
        <a href="${pageContext.request.contextPath}/superagent/superAgent/dashBoard" class="collapsible-header "><i class="material-icons">dashboard</i><span class="hide-menu"> Dashboard</span></a> 
      </li> 
      
      <li>
                <a href="javascript: void(0);" class="collapsible-header has-arrow"><i class="material-icons">view_list</i><span class="hide-menu">Merchant And Agent Summary</span></a>
                <div class="collapsible-body">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/superagent/merchantSummary/1"><i class="material-icons">view_list</i><span class="hide-menu"> Merchant Summary</span></a></li>
                         <li><a href="${pageContext.request.contextPath}/superagent/list"><i class="material-icons">view_list</i><span class="hide-menu"> Agent Summary</span></a></li>
                          <li><a href="${pageContext.request.contextPath}/superagent/subAgentSummary/1"><i class="material-icons">view_list</i><span class="hide-menu"> SubAgent Summary</span></a></li>
               
                    </ul>
                </div>
            </li>
            
        <%--     <li>
                <a href="${pageContext.request.contextPath}/transaction/list" class="collapsible-header has-arrow"><i class="material-icons">account_balance_wallet</i><span class="hide-menu">Transaction</span></a>
                <div class="collapsible-body">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/superagent/transactionSummary/1"><i class="material-icons">view_list</i><span class="hide-menu"> Transaction Summary</span></a></li>
                         <li><a href="${pageContext.request.contextPath}/superagent/allTransactionSummary/1"><i class="material-icons">view_list</i><span class="hide-menu"> All Transaction Summary</span></a></li>
                          
               
                    </ul>
                </div>
            </li> --%>
            
            <li>
                <a href="#" class="collapsible-header has-arrow"><i class="material-icons">person</i><span class="hide-menu">Merchant Detail Summary</span></a>
                <div class="collapsible-body">
                    <ul>
                       <%--  <li><a href="${pageContext.request.contextPath}/superagent/merchantDetailSummary/1"><i class="material-icons">view_list</i><span class="hide-menu"> Merchant Detail Summary</span></a></li> --%>
                         <li><a href="${pageContext.request.contextPath}/superagent/merchantGPVSummary/1"><i class="material-icons">view_list</i><span class="hide-menu"> Merchant Detail Summary</span></a></li>
                                     
                    </ul>
                </div>
            </li>
            
             <li>
                <a href="#" class="collapsible-header has-arrow"><i class="material-icons">person</i><span class="hide-menu"> Merchant GPV </span></a>
                <div class="collapsible-body">
                    <ul>                   
                        <li><a href="${pageContext.request.contextPath}/superagent/listMerchantGPV"><i class="material-icons">view_list</i><span class="hide-menu"> Merchant GPV Summary</span></a></li>
                                     
                    </ul>
                </div>
            </li>
            
            <li>
                <a href="#" class="collapsible-header has-arrow"><i class="material-icons">person</i><span class="hide-menu">Agent Volumes</span></a>
                <div class="collapsible-body">
                    <ul>
                       <%--  <li><a href="${pageContext.request.contextPath}/superagent/agentVolumeSummary/1"><i class="material-icons">view_list</i><span class="hide-menu"> Agent Volume Summary</span></a></li> --%>
                        
                        <li><a href="${pageContext.request.contextPath}/superagent/agentVolumeDetailSummary/1"><i class="material-icons">view_list</i><span class="hide-menu"> Agent Volume Summary</span></a></li>
                                     
                    </ul>
                </div>
            </li>
            
            
    
       
    </ul>
  </li>
</ul>
</aside>

 
  
<div class="page-wrapper">  
<c:set var="contentFileFull" scope="page"
					value="../${pageBean.contentFile}.jsp" />
				<c:choose>
					<c:when test="${not empty pageBean.sideMenuFile }">
						<%-- <div>
							<div class="col-md-3">
								<c:set var="contentSideMenuFile" scope="page" value="../${pageBean.sideMenuFile}.jsp" />
								<c:import url="${contentSideMenuFile}" />
							</div> --%>
						<div class="col-md-12">
							<c:import url="${contentFileFull}" />
						</div>
						<!-- </div> -->
					</c:when>
					<c:otherwise>
						<div>
							<c:import url="${contentFileFull}" />
						</div>
					</c:otherwise>
				</c:choose>  
  </div>
   
 
</div>
  
  
<div class="chat-windows "></div>

<script>
		jQuery(document).ready(function() {
			$('#link-logout').click(function (){
				
				$('#form-logout').submit();
				

			});
		});

	</script>
 
<form action="${pageContext.request.contextPath}/j_spring_security_logout" method="post" id="form-logout">
  		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form>
 

  

<script src="${pageContext.request.contextPath}/resourcesNew/js/urlHide.js"></script>
<%-- <script src="${pageContext.request.contextPath}/resourcesNew/assets/js/jquery-1.11.3.min.js"></script> --%>
<%-- <script data-cfasync="false" src="${pageContext.request.contextPath}/resourcesNew1/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script> --%>
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/libs/jquery/dist/jquery.min.js"></script>
 <script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/dist/js/canva.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>

<script src="${pageContext.request.contextPath}/resourcesNew1/dist/js/materialize.min.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/libs/perfect-scrollbar/dist/js/perfect-scrollbar.jquery.min.js"></script>
 
<script src="${pageContext.request.contextPath}/resourcesNew1/dist/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/dist/js/app.init.js"></script> 
<script src="${pageContext.request.contextPath}/resourcesNew1/dist/js/custom.min.js"></script>
 
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/libs/chartist/dist/chartist.min.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
<!--c3 JavaScript -->
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/extra-libs/c3/d3.min.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/extra-libs/c3/c3.min.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/libs/chart.js/dist/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/dist/js/pages/dashboards/dashboard1.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/extra-libs/sparkline/sparkline.js"></script>


<script src="${pageContext.request.contextPath}/resourcesNew1/assets/libs/pickadate/lib/compressed/picker.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/libs/pickadate/lib/compressed/picker.date.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/libs/pickadate/lib/compressed/picker.time.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/libs/pickadate/lib/compressed/legacy.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/libs/moment/moment.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/assets/libs/daterangepicker/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/resourcesNew1/dist/js/pages/forms/datetimepicker/datetimepicker.init.js"></script>


<script type="text/javascript" src="${pageContext.request.contextPath}/resourcesNew1/dataTable/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resourcesNew1/dataTable/dataTables.material.min.js"></script>
<script
				src="${pageContext.request.contextPath}/resourcesNew/js/circle-progress.js"></script>
<script src='${pageContext.request.contextPath}/resourcesNew1/select2/dist/js/select2.min.js' type='text/javascript'></script>
<%-- <script src="${pageContext.request.contextPath}/resourcesNew/js/plugins/select2.min.js"></script> --%>

			<%-- <script
				src="${pageContext.request.contextPath}/resourcesNew/js/plugins/sweetalert.min.js"></script> --%>




</body> 
</html>
