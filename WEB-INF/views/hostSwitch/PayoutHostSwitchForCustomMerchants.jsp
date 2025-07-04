<%@page import="com.mobiversa.payment.controller.AdminController"%>
<%@page import="com.mobiversa.common.bo.Merchant"%>
<%@page import="com.mobiversa.common.bo.MID"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page import="java.util.ResourceBundle"%>



<%
	ResourceBundle resource = ResourceBundle.getBundle("config");
	String actionimg = resource.getString("NEWACTION");
	String voidimg = resource.getString("NEWVOID");
	String refundimg = resource.getString("NEWREFUND");
	String eyeimg = resource.getString("NEWEYE");
%>



<html lang="en-US">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Payout Host Switch for Custom Merchant</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resourcesNew1/dist/css/virtual-select.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resourcesNew1/dist/js/virtual-select.min.js"></script>


<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <meta charset="UTF-8">
    <meta
            content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
            name="viewport">

    <!-- Script tag for Datepicker -->

    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script
            src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>



<style>

 .container-fluid, button, input[type=text]:not(.browser-default){
        font-family: "Poppins", sans-serif !important;
    }
    
    .text-white strong {
     font-family: "Poppins", sans-serif !important;
    }
    
    .mb-0{
    	margin-bottom: 0 !important;
    }
    
   .vscomp-wrapper.has-clear-button .vscomp-toggle-button {
    box-shadow: none !important;
	}
	
	.text-white, strong{
		font-weight: 600 !important;
	}



.vscomp-wrapper {
	color: #858585;
	display: inline-flex;
	flex-wrap: wrap;
	font-family: "Poppins";
	font-size: 15px;
	position: relative;
	text-align: left;
	width: 100%;
	border: none;
	border-bottom: 1px solid #ffa500;
}

.pop-comp-wrapper {
	z-index: 2;
	transform: none !important;
	max-width: 380px;
	display: inline-flex;
	transition-duration: 300ms;
	opacity: 1;
	box-shadow: none !important;
	position: absolute;
	top: 5vh !important;
	left: 0;
}

.vscomp-toggle-button {
	align-items: center;
	background-color: #fff;
	border: none;
	cursor: pointer;
	display: flex;
	padding: 7px 30px 7px 10px;
	position: relative;
	width: 100%;
}

.vscomp-toggle-all-checkbox {
	display: none !important;
}

.vscomp-search-input {
	width: 100%;
}

.vscomp-toggle-button
,
input


[
type
=
text
]


:not

 

(
.browser-default

 

)
:focus


:not


	

(
[
readonly
]

 

)
{
box-shadow


:

 

none

 

!
important


;
}
.vscomp-search-container {
	align-items: center;
	border-bottom: none;
	display: flex;
	height: 40px;
	padding: 0 5px 0 15px;
	position: relative;
}

.vscomp-dropbox {
	color: #858585;
}

.vscomp-option-text {
	font-size: 14px !important;
}

.bank_list .vscomp-wrapper.has-clear-button.has-value .vscomp-clear-button
	{
	display: none;
}

.vscomp-wrapper.multiple .vscomp-option.selected .checkbox-icon::after {
	transform: none !important;
	border-color: #512da8;
	border-left-color: rgba(0, 0, 0, 0);
	border-top-color: rgba(0, 0, 0, 0);
	width: 50%;
}

.vscomp-wrapper .checkbox-icon::after {
	transition-duration: none;
	border: none;
	content: "";
	display: inline-block;
	height: 100%;
	width: 100%;
	/*  background-image: url('${pageContext.request.contextPath}/resourcesNew1/assets/tick.svg');
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover; */
}

.vscomp-option {
	align-items: center;
	cursor: pointer;
	display: flex;
	flex-wrap: nowrap;
	height: 40px;
	padding: 0 15px;
	position: relative;
	justify-content: space-between;
	flex-direction: row;
}

.vscomp-wrapper .checkbox-label {
	position: relative;
	display: inline-block;
	cursor: pointer;
	color: #DEDEDE;
}

.vscomp-wrapper .checkbox-input {
	position: absolute;
	opacity: 0;
	color: #DEDEDE;
}

.vscomp-wrapper .checkbox-icon {
	position: relative;
	display: inline-block;
	width: 20px;
	height: 20px;
	border: 1px solid #D9D9D9;
	background-color: #F5F5F5;
	margin-right: 8px;
	border-radius: 2px;
}

.vscomp-wrapper.multiple .vscomp-option.selected .checkbox-icon::after {
	/* content: url('${pageContext.request.contextPath}/resourcesNew1/assets/tick.svg'); */
	transition-duration: none;
	border: none;
	content: "";
	display: inline-block;
	height: 100%;
	width: 100%;
	transform: translate(-50%, -50%);
	background-image:
		url('${pageContext.request.contextPath}/resourcesNew1/assets/tick.svg');
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover
}

.vscomp-wrapper .checkbox-label:hover .checkbox-icon {
	border-color: #888888;
}

/*  .vscomp-wrapper .checkbox-icon {
    display: inline;
    height: 15px;
    margin-right: 10px;
    position: relative;
    width: 15px;
} */

/* 
.vscomp-wrapper .checkbox-icon:before {
    content: '';
    display: inline-block !important;
    width: 20px !important;
    height: 20px !important;
    border: 1px solid #D9D9D9 !important;
    background-color: #F5F5F5 !important;
    margin-right: 8px !important;
    border-radius: 2px !important;
}

.vscomp-wrapper .checkbox-icon:after {
    content: '';
    display: inline-block !important;
    width: 20px !important;
    height: 20px !important;
    border: 1px solid #D9D9D9 !important;
    background-color: #F5F5F5 !important;
    color: #4CAF50 !important;
    font-size: 12px !important;
    text-align: center !important;
    line-height: 16px !important;
    margin-right: 8px !important;
    border-radius: 2px !important;
    background-image: url('${pageContext.request.contextPath}/resourcesNew1/assets/tick.svg') !important;
    background-position: center !important;
    background-repeat: no-repeat !important;
    background-size: cover !important;
    background-color: #F5F5F5 !important;
}

   */
.vscomp-wrapper.has-clear-button .vscomp-toggle-button {
	padding-right: 54px;
	padding-left: 0;
}

.vscomp-arrow {
	align-items: center;
	display: inline-block;
	height: 12px;
	justify-content: center;
	position: absolute;
	right: 10px;
	top: 10px;
	width: 12px;
	background-image:
		url('${pageContext.request.contextPath}/resourcesNew1/assets/caret.svg');
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover
}

.vscomp-arrow::after {
	display: none;
}

.vscomp-value {
	color: #858585;
	opacity: 1;
}

.vscomp-wrapper:not (.has-value ) .vscomp-value {
	opacity: 0.8;
}

.bank_list .vscomp-option:hover {
	background-color: #005baa;
	color: #fff;
}

.merchant_list .vscomp-option:hover {
	background-color: transparent;
}

.merchant_list .vscomp-option.selected {
	background-color: transparent;
}

.vscomp-ele {
	max-width: 380px;
}

.pop-comp-wrapper {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
	color: #000;
	background-color: #fff;
	box-shadow: 0 2px 2px 0 rgba(0, 0, 0, .14), 0 3px 1px -2px
		rgba(0, 0, 0, .12), 0 1px 5px 0 rgba(0, 0, 0, .2);
	text-align: left;
	flex-wrap: wrap;
	z-index: 1;
}

.vscomp-search-input::placeholder {
	color: #858585 !important;
}

@media only screen and (min-width: 993px) {
	.btnrowcol1 {
		width: 36.66667% !important;
		margin-left: auto;
		left: auto;
		right: auto;
	}
	.pop-comp-wrapper {
		z-index: 2;
		transform: none !important;
		max-width: 380px;
		display: inline-flex;
		transition-duration: 300ms;
		opacity: 1;
		box-shadow: none !important;
		position: absolute;
		top: 6vh !important;
		left: 0;
	}
}

.input_row{
	display: flex;
 	align-items: end;
 }

@media only screen and (min-width: 601px) {
	.btnrowcol1 {
		width: 36.66667% !important;
		margin-left: auto;
		left: auto;
		right: auto;
	}

}

@media only screen and (max-width: 601px) {
.input_row{
		display: block !important;
	}
}


/* .bank_list .vscomp-options>:first-child {
	display: none !important;
} */
.bank_list .vscomp-option.focused {
	background-color: #fff !important;
}

.merchant_list .vscomp-option.focused {
	background-color: #fff !important;
}

.bank_list .vscomp-option:hover {
	background-color: #005baa !important;
	color: #fff !important;
}

.vscomp-wrapper.has-select-all .vscomp-search-input {
	width: 100%;
}

.vscomp-search-input::placeholder {
	font-size: 13px;
}

.submitbtncol {
	display: flex;
	align-items: center;
	justify-content: center;
}


/* .vs-dropdown {
    max-height: 300px !important;
    overflow-y: auto !important;
    overflow-anchor: none;
} */


</style>



</head>
<body>

	<!-- Title -->
	<div class="container-fluid">
		<div class="row">
			<div class="col s12">
				<div class="card blue-bg text-white">
					<div class="card-content">
						<div class="d-flex align-items-center">
							<h3 class="text-white mb-0">
								<strong>PAYOUT Host Switch</strong>
							</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
<!-- onsubmit="prepareAndSubmitForm()"  -->
		<form
			action="${pageContext.request.contextPath}/transaction/updatePayoutHostForCustomMerchants"
			method="post" id="hostBankSwitchForm"
			>
			<!-- Custom Merchants -->
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}">

			<div class="row">
				<div class="col s12">
					<div class="card border-radius">
						<div class="card-content">

							<div class="d-flex align-items-center">
								<h5 class="text-white mb-0">Custom Merchants</h5>
							</div>
							<div class="row input_row" >
								<div class="input-field col s12 m4 l4 bank_list btnrowcol1" style="margin-left: 0;">
									<div style="color: #858585; font-weight: 500;">Select
										Host</div>
									<div>
										<select id="host_name" name="host_name"
											placeholder="Choose Host" data-search="true"
										>
											<!-- <option value="All" style="color: #DEDEDE;"></option> -->
											<option value="All" style="color: #DEDEDE;">Choose
												Host</option>
											<%-- <c:forEach var="host" items="${fpxHostList}">
												<option value="${host}">${host}</option>
											</c:forEach> --%>
											
											<option value="CRL1~Curlec 1" style="color: #DEDEDE;">Curlec 1</option>
											<option value="CRL2~Curlec 2" style="color: #DEDEDE;">Curlec 2</option>
											<option value="MBB1~Maybank 1" style="color: #DEDEDE;">Maybank 1</option>
											<option value="MBB2~Maybank 2" style="color: #DEDEDE;">Maybank 2</option>
											<option value="AMB1~Ambank 1" style="color: #DEDEDE;">Ambank 1</option>
											<option value="AMB2~Ambank 2" style="color: #DEDEDE;">Ambank 2</option>
										</select>
										
									</div>
									<div id="error_message_host" style="color: red; font-size: 11px;"></div>
									
								</div>

								<!-- <div class="col s12 m2 l2"></div> -->

								<div class="input-field col s12 m4 l4 merchant_list">
									<div style="color: #858585; font-weight: 500;">Select
										Merchant</div>
									<select multiple name="merchant_name" id="merchant_name"
										placeholder="Choose Merchants" data-search="true"
										data-silent-initial-value-set="true">

										<!-- 	<option value="" disabled style="color: #DEDEDE;">choose merchants</option>
 -->
											 <c:forEach var="merchant" items="${merchantList}">
											   <c:if test="${merchant.id != 2586}">
    											<option value="${merchant.id}">${merchant.businessName} ~ ${merchant.id}</option>
    											</c:if>
											</c:forEach> 
										
									</select>
									
									<div id="error_message_merchant" style="color: red; font-size: 11px;"></div>
								</div>
								
								<div class="input-field col s12 m2 l2 submitbtncol">
									<button type="submit" id="submitBtn"
										class="btn btn-primary curved-btn move-left custom-btn"
										style="" onclick="">Submit</button>

								</div>



							</div>

							<!-- <div class="row">
								<div class="input-field col s12 m5 l5"></div>
							</div> -->



							<!-- <div class="row ">


								<div class="input-field col s12 m5 l5 btnrowcol1"></div>

								<div class="input-field col s12 m2 l2 submitbtncol">
									<button type="submit" id="submitBtn"
										class="btn btn-primary curved-btn move-left custom-btn"
										style="" onclick="">Submit</button>

								</div>
								<div class="input-field col s12 m5 l5"></div>


							</div> -->
							<!-- <div class="row center-align">
								<button type="submit" id="submitBtn"
									class="btn btn-primary curved-btn move-left custom-btn"
									style="padding: 0 3%;" onclick="">Submit</button>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</form>






		<div class="confirm_approval_overlay" id="confirm_approval_overlay">
			<div class="row modal_row">
				<div class="col offset-l5 offset-m3 s12 m6 l4">

					<div id="confirm_approval_modal" class="confirm_approval_modal">
						<div class="modal-header">
							<p class="mb-0">Notification</p>
						</div>
						<div class="modal-content" style="padding: 20px 30px;">
							<div class="align-center">
								<img id="confirm_approval_image"
									src="${pageContext.request.contextPath}/resourcesNew1/assets/notify.svg"
									width="40" height="40">
							</div>
							<p id="confirm_approval_text" class="align-center"
								style="font-size: 17px; margin-top: 5px;">
								Host transition initiated. A confirmation email will be sent to<span
									style="color: #005baa !important;"> csmobi@gomobi.io </span>upon
								completion.
							</p>


						</div>
						<div class="align-center modal-footer footer">

							<button id="confirm_approval_closeBtn" class="btn closebtn"
								type="button" onclick="closeConfirmApprovalPopup()">Close
							</button>

						</div>
					</div>

				</div>
			</div>
		</div>

		<input type="hidden" id="isUpdated" value="${response.responseCode}" />
		<input type="hidden" id="responseMessageText" value="${response.responseMessage}" />

		<style>
.preview_overlay, .action_overlay, .result_overlay, .confirm_overlay,
	.confirm_approval_overlay {
	display: none;
	position: fixed;
	z-index: 100;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	/*background-color: rgb(0, 0, 0);*/
	background-color: rgba(0, 0, 0, 0.2);
	scrollbar-width: none;
}

.preview_modal, .action_modal, .result_modal, .confirm_modal,
	.confirm_approval_modal {
	background-color: #fff;
	border-radius: 10px !important;
	margin: 1% auto;
}

.modal-header {
	color: #005BAA;
	text-align: center;
	padding: 10px;
	border-bottom: 1.5px solid #F5A623;
	font-weight: 500;
	font-size: 16px;
}

.modal-header p {
	font-size: 18px;
	font-weight: 500;
}

.mb-0 {
	margin-bottom: 0 !important;
}

.footer {
	background-color: #EFF8FF !important;
	display: flex;
	align-items: center;
	justify-content: center;
}

.modal-footer {
	background-color: #EFF8FF;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	padding: 10px 0;
}

.modal-content {
	padding: 15px 15px;
	font-family: "Poppins", sans-serif;
	color: #515151 !important;
}

.closebtn {
	background-color: #005baa;
	border-radius: 50px;
	height: 33px !important;
	line-height: 33px !important;
	padding: 0 30px;
	font-size: 15px;
	font-family: "Poppins";
}

.closebtn:hover, .closebtn:focus {
	background-color: #005baa !important;
	padding: 0 30px;
	box-shadow: 5px 5px 10px -3px rgba(0, 90, 170, 0.2), /* Right shadow */
                    -5px 5px 10px -3px rgba(0, 90, 170, 0.2),
		/* Left shadow */
                    0 5px 10px -3px rgba(0, 90, 170, 0.2) !important;
	/* Bottom shadow */
}

#overlay {
	z-index: 100;
}

@media only screen and (min-width: 993px) {
	.row .col.offset-l5 {
		margin-left: 33.33333%;
	}
	
	
}

@media only screen and (min-width: 993px) {
	.row .col.offset-l3 {
		margin-left: 22%;
	}
}

.modal_row {
	width: 100%;
	height: 100%;
	align-content: center;
}

.modal-content {
	padding: 15px 24px;
}

.modal_row {
	width: 100%;
	height: 100%;
	align-content: center;
}

.modal-footer {
	background-color: #EFF8FF;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	padding: 10px 0;
}

.footer {
	background-color: #EFF8FF !important;
	display: flex;
	align-items: center;
	justify-content: center;
}

.align-center {
	text-align: center;
}

 #host_name .vscomp-options-list{
	max-height: 150px !important;
}   




</style>

	</div>

	<script>
		$(document).ready(function() {
			var selected;
		});

		 /* function prepareAndSubmitForm() {
			 
			 var merchantSelect = document.getElementById('merchant_name');
			 var hostSelect = document.getElementById('host_name');
			    var merchantSelectValue = merchantSelect.value;
			    var hostSelectValue = hostSelect.value;
				var error_id;
			    if (!merchantSelectValue) {
			         error_id = document.getElementById("error_message_merchant");   
			        error_id.innerText = "Please select any merchant";
			        error_id.style.display = "block"; 

			        setTimeout(function () {
			            error_id.innerText = "";
			            error_id.style.display = "none"; 
			        }, 3000);

			        return false; 
			    }else if(!hostSelectValue){
			    	  error_id = document.getElementById("error_message_host");   
				        error_id.innerText = "Please select any host type.";
				        error_id.style.display = "block"; 

				        setTimeout(function () {
				            error_id.innerText = "";
				            error_id.style.display = "none"; 
				        }, 3000);

				        return false; 

			    }
			    else{
			    
			 $("#overlay").show();
			var selectedOptions = [];
			var selectElement = document.getElementById("merchant_name");

			selectOptions = $('#merchant_name').val();

	
			// Add a hidden input field to the form to submit the selected options as an array
			var hiddenInput = document.createElement("input");
			hiddenInput.setAttribute("type", "hidden");
			hiddenInput.setAttribute("name", "selectedMerchants");
			hiddenInput.setAttribute("value", JSON.stringify(selectOptions));

			document.getElementById("hostBankSwitchForm").appendChild(
					hiddenInput);
			    }
			
		}  */
		
		
		function prepareAndSubmitForm(event) {
		    var merchantSelect = document.getElementById('merchant_name');
		    var hostSelect = document.getElementById('host_name');
		    var merchantSelectValue = merchantSelect.value;
		    var hostSelectValue = hostSelect.value;
		    var error_id;
		    var isValid = true; 

		    if (!merchantSelectValue) {
		        error_id = document.getElementById("error_message_merchant");   
		        error_id.innerText = "Please select any merchant";
		        error_id.style.display = "block"; 

		        setTimeout(function () {
		            error_id.innerText = "";
		            error_id.style.display = "none"; 
		        }, 3000);

		        isValid = false; 
		    }

		    if (!hostSelectValue) {
		        error_id = document.getElementById("error_message_host");   
		        error_id.innerText = "Please select any host type.";
		        error_id.style.display = "block"; 

		        setTimeout(function () {
		            error_id.innerText = "";
		            error_id.style.display = "none"; 
		        }, 3000);

		        isValid = false; 
		    }

		    if (!isValid) {
		        return false;
		    }
		    
		    $("#overlay").show();

		    var selectOptions = $('#merchant_name').val();

		    var hiddenInput = document.createElement("input");
		    hiddenInput.setAttribute("type", "hidden");
		    hiddenInput.setAttribute("name", "selectedMerchants");
		    hiddenInput.setAttribute("value", JSON.stringify(selectOptions));

		    document.getElementById("hostBankSwitchForm").appendChild(hiddenInput);

		    return true; 
		}

		
		document.getElementById("hostBankSwitchForm").onsubmit = function(event) {
		    if (!prepareAndSubmitForm()) {
		        event.preventDefault(); 
		    }
		};
		
		$(document).ready(function() {

			$('#merchant_name').on('change', function() {
				validateSelections();

			});
		});

		$(document).ready(function() {

			$('#host_name').on('change', function() {
				validateSelections();

			});
		});

		function validateSelections() {
			var bankSelect = document.getElementById("host_name");
			var merchantSelect = document.getElementById("merchant_name");
			var submitButton = document.getElementById("submitBtn");

			var isBankSelected = bankSelect.value !== "All";

			console.log("bank selected : ", isBankSelected);
			var areMerchantsSelected = merchantSelect.value.length > 0;
			var areBankSelected = bankSelect.value.length > 0;

			if (isBankSelected && areMerchantsSelected && areBankSelected) {
				submitButton.disabled = false;
				submitButton.style.opacity = 1;
			} else {
				submitButton.disabled = true;
				submitButton.style.opacity = 0.5;
			}
		}

		validateSelections();
	</script>


	<script>
		VirtualSelect.init({
			ele : '#merchant_name',
			showSelectedOptionsFirst : true
			
		});

		VirtualSelect.init({
			ele : '#host_name',
			position: 'auto',
			focusSelectedOptionOnOpen: false
			
		});
		/* VirtualSelect.init({
		    ele: 'select'
		}); */

		function openConfirmApprovalPopup() {
			document.getElementById("confirm_approval_overlay").style.display = "block";
		}

		function closeConfirmApprovalPopup() {
			document.getElementById("confirm_approval_overlay").style.display = "none";
			const emails_input = document.getElementById("approval_emails");
			emails_input.value = '';
		}

		document.addEventListener('DOMContentLoaded', function() {

			var updated = document.getElementById("isUpdated").value;
			var responseMessage = document.getElementById("responseMessageText").value;
			if (updated === "0000") {
				openConfirmApprovalPopup();
			}else if(updated == "0001"){
				document.getElementById("confirm_approval_text").innerText = "Requested merchant is already assigned with the given host"
				openConfirmApprovalPopup();
			}
			else if(updated == "0002"){
				document.getElementById("confirm_approval_text").innerText = "Failed to refresh the updated payout host."
				openConfirmApprovalPopup();
			}
			else if(updated == "0003"){
				document.getElementById("confirm_approval_text").innerText = "Failed to send acknowledgment email."
				openConfirmApprovalPopup();
			}
			else if(updated == "0005"){
				document.getElementById("confirm_approval_text").innerText = responseMessage;
				openConfirmApprovalPopup();
			}
			else if(updated == "0006"){
				document.getElementById("confirm_approval_text").innerText = "No merchants have been configured for AGNI Payout."
				openConfirmApprovalPopup();
			}
		});
	</script>


	<!-- *********************************************************************** -->






</body>
</html>

