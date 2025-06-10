<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resourcesNew1/dist/css/virtual-select.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resourcesNew1/dist/js/virtual-select.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>


</head>
<body>


	<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap')
	;

.container-fluid {
	font-family: "Poppins", sans-serif;
}

.heading_text {
	font-family: "Poppins", sans-serif !important;
	font-weight: 600 !important;
	font-size: 20px !important;
}

.mb-0 {
	margin-bottom: 0 !important;
}

.select2-container--default .select2-selection--single {
	border: none !important;
}

.select2-container--default .select2-selection--single .select2-selection__arrow
	{
	top: 5px !important;
}

#overlay {
	z-index: 10 !important;
}

.row .select2-container {
	z-index: 9 !important;
	width: 85% !important;
	font-size: 14px !important;
}

input[type=search]:not(.browser-default) {
	font-size: 14px !important;
}

.select2-container--default .select2-results__option .select2-results__option
	{
	font-size: 14px !important;
}

/*.button_tab_container {*/
/*    display: flex;*/

/*}*/
.button-tabs, .mdr_button-tabs {
	color: #85858570;
	width: 100%;
	background: #fff;
	border: none;
	border-bottom: 4px solid #85858570;
	padding: 15px;
	font-weight: 600;
	font-family: "Poppins", sans-serif;
	cursor: pointer;
}

.p-0 {
	padding: 0 !important;
}

.button-tabs:focus, .mdr_button-tabs:focus {
	background-color: #fff !important;
}

.tab_active {
	color: #005baa;
	border-bottom: 4px solid #005baa;
	cursor: pointer;
}

#mainmerchant_option, #submerchant_option {
	padding: 20px 0px;
}

.ws-nowrap {
	white-space: nowrap;
}

.input-field.col label {
	font-size: 18px;
}

.input-field.col input::placeholder {
	font-size: 14px !important;
	color: #70707080 !important;
}

.select-wrapper input.select-dropdown {
	font-size: 14px !important;
	color: #707070;
}

input[type="text"]:not(.browser-default) {
	border-bottom: 1.5px solid orange !important;
	color: #707070;
	font-size: 13px !important;
	font-family: "Poppins", sans-serif;
}

input[type="text"]:not (.browser-default )::placeholder {
	color: #D0D0D0 !important;
}

input[type="text"]:not (.browser-default ):focus:not ([readonly] )+label
	{
	color: #707070;
}

.select-wrapper ul {
	top: 10px !important;
}

.mdr_button-tabs {
	white-space: nowrap;
}

.paymentmethod_text {
	color: #707070;
	font-weight: 600;
	font-size: 15px;
	text-align: left;
}

input[type=text]:not(.browser-default) {
	font-size: 14px !important;
	color: #707070 !important;
}

.disabled {
	opacity: 0.5;
	pointer-events: none;
}

.mx-0 {
	margin-left: 0 !important;
	margin-right: 0 !important;
}

input[type=text]:not(.browser-default ):focus:not([readonly] )+label {
	color: #707070 !important;
}

#label_businessname {
	position: static !important;
	color: #858585;
	font-size: 15px;
}

.select2-container {
	margin: 5px 0 !important;
}

.outer_overlay {
	 display: none;
	position: fixed;
	z-index: 10;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	scrollbar-width: none;
}

.popup_messages {
	color: #72777B !important;
}

.confirmbtn {
	background-color: #005baa;
	border-radius: 50px;
	height: 33px !important;
	line-height: 33px !important;
	padding: 0 30px;
	font-size: 12px;
	margin: 0 5px;
	font-family: "Poppins";
}

.confirmbtn:hover, .confirmbtn:focus {
	background-color: #005baa !important;
}

.cancelbtn {
	background-color: #fff;
	border-radius: 50px;
	height: 33px !important;
	line-height: 33px !important;
	padding: 0 30px;
	font-size: 12px;
	border: 1px solid #005baa;
	margin: 0 5px;
	color: #005baa;
	font-family: "Poppins";
}

.cancelbtn:hover, .cancelbtn:focus {
	background-color: #fff !important;
	color: #005baa !important;
}

.confirm_overlay {
	display: none;
	position: fixed;
	z-index: 10;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	scrollbar-width: none;
}

.confirm_modal {
	background-color: #fff;
	border-radius: 10px !important;
	margin: 1% auto;
}

.update_popup-modal {
	background-color: #fff;
	border-radius: 10px !important;
	margin: 1% auto;
}

.modal-header {
	padding: 10px 6px;
	height: auto;
	width: 100%;
	text-align: center;
	border-bottom: 1.5px solid #F5A623;
	font-size: 17px;
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

.modal_row {
	width: 100%;
	height: 100%;
	align-content: center;
}

.modal-header {
	color: #005BAA;
	text-align: center;
	padding: 10px;
	border-bottom: 1.5px solid orange;
	font-weight: 500;
	font-size: 16px;
}

.modal-content {
	padding: 15px 24px;
}

.modal-footer {
	background-color: #EFF8FF;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	padding: 10px 0;
}

.modal-content {
	padding: 10px 30px;
	font-family: "Poppins", sans-serif;
}

.closebtn {
	background-color: #005baa;
	border-radius: 50px;
	height: 33px !important;
	line-height: 33px !important;
	padding: 0 30px;
	font-size: 12px;
	font-family: "Poppins";
}

.closebtn:hover, .closebtn:focus {
	background-color: #005baa !important;
}

.content_updatepopup {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	padding: 7px 30px !important;
}
</style>


	<style>
.titleofinput {
	margin-bottom: 2px !important;
	color: #858585;
}

.card .padding-card {
	padding: none !important;
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
	top: 4.5vh !important;
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

.vscomp-toggle-button, input[type=text]:not(.browser-default):focus:not([readonly]) {
	box-shadow: none !important;
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
}

.vscomp-option {
	align-items: center;
	cursor: pointer;
	display: flex;
	flex-wrap: nowrap;
	height: 40px !important;
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

.vscomp-wrapper .checkbox-label:hover .checkbox-icon {
	border-color: #888888;
}

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

@media only screen and (min-width: 601px) {
	.submitbtncolumn {
		top: 2vh !important
	}
}

.bank_list .vscomp-option.focused {
	background-color: #fff !important;
}

.bank_list .vscomp-option {
	color: #707070 !important; 
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

.vscomp-wrapper.has-clear-button.has-value .vscomp-clear-button {
	display: none !important;
}

.host_bank_switch_all_merch .custom-btn {
	margin: 0px 0px !important;
}

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

/* .vscomp-options-container {
    max-height: fit-content !important;  
    max-height: 50vh !important;        
    overflow-y: auto !important;  
} */
#host_name .vscomp-options-list {
	max-height: 150px !important;
}

.container-fluid, button, input[type=text]:not(.browser-default) {
	font-family: "Poppins", sans-serif !important;
}

.mb-0 {
	margin-bottom: 0 !important;
}

.vscomp-wrapper.has-clear-button .vscomp-toggle-button {
	box-shadow: none !important;
}

.text-white, strong {
	font-family: "Poppins", sans-serif !important;
	font-weight: 600 !important;
}

.input_row {
	display: flex;
	align-items: center;
}

@media only screen and (max-width: 601px) {
	.input_row {
		display: block !important;
	}
}

.capitalize{
	text-transform: capitalize !important; 
	}
	
	.tab{
		border-bottom: 2px solid #c5c5c5;
	}
	
	.tabs .tab a:focus, .tabs .tab a:focus.active {
    	background-color: #fff;
    	outline: none;
	}
	
	
	.tabs_style a{
	color : #c5c5c590 !important;
	font-size: 14px !important;
	box-shadow: none !important;
	font-weight: 500 !important;
}
	
.tabs_style a.active{
	font-weight: 500 !important;
	color : #005baa !important;
	font-size: 16px !important;
	box-shadow: none !important;
}	


#clear_btn{
    background: #fff !important;
    border: 1px solid #005baa;
    color: #005baa !important;
}

.btn-primary{
    font-size: 13px;
}

.host_type_col{
	display: flex;
	align-items: center;
	justify-content: flex-end;
}

.payment_head_text{
	color: #707070;
	font-size: 16px ;
	font-weight: 500;
}

.host_type_col .select-wrapper input[type=text]:not(.browser-default){
	border: 1px solid #005baa70 !important;
	border-radius: 5px;
	
}

.host_type_col .select-wrapper {
    position: relative;
    background: #005baa09;
    font-family: "Poppins";
}

.settle_period_select_label{
	font-size: 14px;
	font-weight: 400;
	color: #707070;
	
}

/* .vscomp-ele {
    max-width: 380px;
    border-bottom: 1px solid orange;
} */

/* .settle_period_select_col .select-wrapper {
	border-bottom: 1.5px solid orange;
} */

.select-dropdown{
	width: 100%;
	
}

.dropdown-content li{
	min-height: 8px;
}


@media (min-width: 993px) {

	.display_flex{
		display: flex;
	}
	
	.control-label{
		font-size: 15px !important;
	}
	
	.host_type_col .vscomp-ele{
		width: 75%;
	}
	
  .flex-lg {
    flex: 1;
  }
}


	
	
.material-tooltip {
    font-size: 11px !important; 
    background-color: #333 !important; 
    padding: 10px 15px !important; 
    border-radius: 8px !important;
    max-width: 25%; 
    font-family: "Poppins";
}

/* Customize Tooltip Arrow */
.material-tooltip::before {
    border-color: #333 transparent transparent transparent !important; /* Arrow color */
    border-width: 8px !important; /
}

.border_box{
	
	border: 1px solid #70707050;
	border-radius: 10px;
	padding: 10px;
	margin: 10px 0;
}

.cardtype_img img{
	width: 70px;
	height: 70px;
}

#mainMerchantName .vscomp-arrow{
	display: none;
}

.host_type_col .vscomp-value {
    color: #858585;
    opacity: 1;
    margin-left: 10px;
}
.host_type_col .vscomp-arrow{
background-image:
		url('${pageContext.request.contextPath}/resourcesNew1/assets/upanddownarrow.svg');
top: 12px;		
}
 .host_type_col .vscomp-wrapper {
border: 1px solid #005baa70;
border-radius: 5px;
}

 .host_type_col .vscomp-toggle-button{
background-color: #005baa09;
 padding: 10px 30px 10px 10px;
}

.head_row{
margin: 10px 0;
}

.mdr_tab_card .card {
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1), 
              0 6px 20px rgba(0, 0, 0, 0.08);
  margin: 0 24px;
}

.tabs_style a{
	font-size: 16px !important;
}

.vscomp-option.focused {
    background-color: #005baa;
    color: #fff;
}

.select-wrapper ul {
    top: 48px !important;
}

/* .select-wrapper input.select-dropdown {
  transition: background-color 0.3s ease, box-shadow 0.3s ease;
}

.select-wrapper input.select-dropdown:focus {
  background-color: transparent !important;
  box-shadow: none !important;
} */


</style>

	<div class="test" id="pop-bg-color"></div>
	<div id="overlay-popup"></div>

	<div id="overlay">
		<div id="overlay_text">
			<img class="img-fluid"
				src="/MobiversaAdmin/resourcesNew1/assets/loader.gif">
		</div>
	</div>

	<div class="container-fluid mb-0" id="pop-bg">

		<div class="row">
			<div class="col s12">
				<div class="card blue-bg text-white">
					<div class="card-content">
						<div class="d-flex align-items-center">
							<h3 class="text-white mb-0 ">
								<strong class="heading_text">Edit MDR Rates</strong>

							</h3>
						</div>
					</div>
				</div>
			</div>
		</div>


		<%--   choose merchant box --%>

		<div class="row">
			<div class="col s12">
				<div class="card border-radius">
					<div class="card-content">

						<div class="d-flex align-items-center">
							<h5 class="text-white mb-0">Choose Merchants</h5>
						</div>

						<div class="row input_row ">

							<div class="input-field col s12 m6 l4 bank_list">
								<p class="titleofinput">Business Name</p>

								<select id="merchantName" name="merchantName" data-search="true">
								<option value="" disabled selected style="color: #DEDEDE;">Choose merchant</option>
								<c:forEach items="${merchant1}" var="merchant">
								<c:if test="${empty merchant.mmId || merchant.mmId == '0' || merchant.mmId == merchant.businessName || merchant.mmId == '--Select the Master Merchant--'}">
								<option value="${merchant.id}">${merchant.businessName}</option>
								</c:if>
								<%-- <option value="${merchant.id}">${merchant.businessName}</option> --%>
									</c:forEach>
								</select>

							</div>

							<div class="input-field col s12 m6 l8 submitbtncolumn">
								<button type="button" id="searchButton"
									class="btn btn-primary curved-btn move-left custom-btn"
									onclick="loadSearch()" disabled>Search</button>
							</div>

						</div>

						<br>

					</div>
				</div>
			</div>
		</div>
		
		
		<%--   merchant details box --%>
		
	<c:set var="response" value="${response.mdrDetails}" />
	<c:set var="type" value="${response.type}" />
	
<%-- 	<c:set var="submerchant_response" value="${subMerchantResponse.mdrDetails}" />
	<c:set var="submerchant_type" value="${subMerchantResponse.type}" /> --%>	
	
		<c:if test="${businessName != null }">
		<div class="row">
			<div class="col s12">
				<div class="card border-radius">
					<div class="card-content">

						<div class="d-flex align-items-center">
							<h5 class="text-white mb-0">Merchant Details</h5>
						</div>
						
						
						<ul class="tabs">
						  <li class="tab col s12 m3 l3 capitalize tabs_style" id="mastermerchant_tab_id"><a href="#mastermerchanttab" class="${!isSubMerchant ? 'active' : ''}">Master Merchants</a></li>
						  <li class="tab col s12 m3 l3 capitalize tabs_style" id="submerchant_tab_id"><a href="#submerchanttab" class="${isSubMerchant ? 'active' : ''}">Sub Merchants</a></li>
						  <li class="tab col s12 m6 l6 capitalize tabs_style" style="pointer-events: none;"><a class="" href="#test9"></a></li>
						 
						</ul>
						
						<div class="row" id="mastermerchanttab">
							<div class="input-field col s12 m6 l4 bank_list">
                    		<p class="titleofinput">Master Merchant</p>	
							  <select id="mainMerchantName" class="virtual-select">
							  	<option value="${businessName}">${businessName}</option>
							  </select>

                		</div>
                		
                		<div class="input-field col s12 m6 l4 bank_list">
								<p class="titleofinput">MID </p>

								<select id="mainMerchantMid" name="mainMerchantMid"
									placeholder="select" data-search="true">
									  <option value="" selected disabled>Choose MID</option>  
											<c:forEach items="${midList}" var="dto">
												 <option value="${dto}" ${dto == mid ? 'selected' : ''}>${dto}</option>
											</c:forEach>
								</select>


							</div>

                		</div>

						<input type="hidden" id="merchantId1" name="merchantId1" value="${merchantId}">
						<input type="hidden" id="submerchantMerchantId" name="submerchantMerchantId" value="${submerchantMerchantId}">
						<input type="hidden" id="businessNameFromBackend" name="businessNameFromBackend" value="${businessName}">
						<input type="hidden" id="submerchantBusinessNameFromBackend" name="submerchantBusinessNameFromBackend" value="${subMerchantBusinessName}">
						
						<div class="row" id="submerchanttab">

							<div class="input-field col s12 m6 l4 bank_list">
								<p class="titleofinput">Sub Merchant Name</p>

								<select id="subMerchantName" name="subMerchantName"
									placeholder="select" data-search="true">
									<option value="" selected disabled>Choose SubMerchant</option>
												<c:forEach items="${subMerchantList}" var="submerchant">
													<option value="${submerchant.id}" ${submerchant.id == submerchantMerchantId ? 'selected' : ''}>${submerchant.businessName}</option>
												</c:forEach>
								</select>

							</div>
							
							<div class="input-field col s12 m6 l4 bank_list">
								<p class="titleofinput">MID</p>

								<select id="subMerchantMid" name="subMerchantMid"
									placeholder="select" data-search="true">
									<option value="" selected disabled>Choose MID</option>
												<c:forEach items="${subMidList}" var="subMidList">
													<option value="${subMidList}" ${subMidList == midToUpdateMDR_submerchant ? 'selected' : ''}>${subMidList}</option>
												</c:forEach>
								</select>


							</div>
							
						</div>
											
			<c:choose>
			<c:when test="${empty response}">
			</c:when>
			<c:otherwise>
			<c:if test="${empty type}">
			
			<div class="row" id="errorText">
				<div class="col s12 m12 l12">
					<span
						style="color: red; font-size: 14px; text-align: center;">
						No MDR was found for this merchant ID.</span>
				</div>
			</div>
	 <script>
        
        setTimeout(function() {
          const elem = document.getElementById("errorText");
          if (elem) {
            elem.style.display = "none";
          }
        }, 10000);
      </script>
			</c:if>
			</c:otherwise>
			</c:choose>			
			
			</div>
<style>
  .tabs.inner_tabs {
    border-bottom: 1px solid #ccc; /* default line */
    display: flex;
    justify-content: flex-start;
    position: relative;
  }

  .tabs.inner_tabs .tab {
    flex: 1; 
    text-align: center;
  }

  /* Optional: Adjust active tab indicator */
  .tabs .indicator {
    background-color: #1976d2; 
    height: 2px;
  }
  
  .card_input_mdr input[type="text"]:not(.browser-default){
  	width: 70%;
  } 
</style>
					
					
					
					<!-- mdr cards  -->
										
					
 <c:if test="${not empty type}">		
 	
<div class="row mdr_tab_card" id="mdr_fill_card" style="padding: 0 10px;">

    <div class="col s12">
        <div class="card border-radius">
            <div class="card-content">

                <!-- Tabs -->
                <ul class="tabs inner_tabs">
              
                <c:if test="${type.contains('FPX')}">
                    <li class="tab col s12 m3 l3 capitalize tabs_style"><a href="#test3">Internet Banking</a></li>
                 </c:if>
                 <c:if test="${type.contains('VISA') ||type.contains('MASTER')  ||type.contains('UNIONPAY')}">
                    <li class="tab col s12 m2 l2 capitalize tabs_style"><a href="#test4">Card</a></li>
                 </c:if>
                 <c:if test="${type.contains('BOOST') || type.contains('GRAB') || type.contains('SHOPPY') || type.contains('TNG')}">
                    <li class="tab col s12 m2 l2 capitalize tabs_style"><a href="#test5">eWallet</a></li>
                 </c:if>
                 <c:if test="${type.contains('DUITNOWQR')}">
                    <li class="tab col s12 m2 l2 capitalize tabs_style"><a href="#test6">DuitNow QR</a></li>
                 </c:if>
                 <c:if test="${type.contains('PAYOUT')}">   
                    <li class="tab col s12 m2 l2 capitalize tabs_style"><a href="#test7">Payout</a></li>
                 </c:if>
                 <c:if test="${not empty type}"> 
                    <li class="tab col s12 m1 l1 capitalize tabs_style" style="pointer-events: none;"><a href="#test8"></a></li>
               	</c:if>
                </ul>

                <!-- Tab Content -->
                <div class="row">
                

               
                
                <div class="col s12 input-field">
                <c:if test="${type.contains('FPX')}">
                    <div id="test3" class="col s12">
                        
                        <div class="row head_row">
                        	<div class="col s12 m3 l3 ">
                        		<p class="payment_head_text">FPX MDR (%)</p>
                        	</div>
                        	<div class="col s12 offset-m6 offset-l6 m3 l3 host_type_col">
                        		<select id="host_type_fpx" class="">

                        			<c:forEach items="${fpxHostDetails}" var="host">
										<option value="${host.hostId}" 
										<c:if test="${host.hostId == 'PN01'}">selected</c:if>>
										${host.hostName}
										</option>
										</c:forEach>
                        		</select>
                        		<span style="margin-left: 10px;" class="tooltipped" data-position="top" data-tooltip="Please choose the appropriate host for this payment type"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/info_grey.svg" width="25" height="25"></span>
                        	</div>
                        	
                        </div>
                        
                        
                		<div class="row display_flex">
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="fpx_merchant_mdr"
									id="fpx_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.fpxMerchantMDR}"> <label
									for="fpx_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="fpx_host_mdr"
									id="fpx_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.fpxHostMDR}" >
								<label for="fpx_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="fpx_mobi_mdr"
									id="fpx_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.fpxMobiMDR}" readonly>
								<label for="fpx_mobi_mdr" style="white-space: nowrap;" >Mobi
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="fpx_min_value"
									id="fpx_min_value" type="text" inputmode="decimal"
									class="" value="${response.fpxMinimumMDR}"> <label
									for="fpx_min_value" style="white-space: nowrap;">Minimum
									Value</label>
							</div>

							<div class="col s12 m4 l2 input-field settle_period_select_col flex-lg ${isSubMerchant ? 'disabled' : ''}">
						<select name="export" id="settle_period_fpx" onchange="" >
                            <option value=""  style="color: #DEDEDE;" ${response.fpxSettleType == null ? 'selected' : ''}>Select </option>
							<option value="1" style="color: #DEDEDE;" ${response.fpxSettleType == 1 ? 'selected' : ''}>T+1</option>
							<option value="2" style="color: #DEDEDE;" ${response.fpxSettleType == 2 ? 'selected' : ''}>T+2</option>
							<option value="3" style="color: #DEDEDE;" ${response.fpxSettleType == 3 ? 'selected' : ''}>T+3</option>
							<%-- <option value="4" style="color: #DEDEDE;" ${response.fpxSettleType == 4 ? 'selected' : ''}>T+4</option> --%>
							<option value="5" style="color: #DEDEDE;" ${response.fpxSettleType == 5 ? 'selected' : ''}>T+5</option>
                        </select> <label class="control-label" >Settlement Period</label>
							</div>
						</div>
                        
                      
                    </div>
                  </c:if>
                  
                  <c:if test="${type.contains('VISA') ||type.contains('MASTER')  ||type.contains('UNIONPAY')}">
                  
                  
                    <div id="test4" class="col s12">
                   
                        <div class="row head_row">
                        	
                        	<div class="col s12 m3 l3 input-field settle_period_select_col flex-lg ${isSubMerchant ? 'disabled' : ''}">
									<select name="settle_period" id="settle_period_card" onchange="">
			                            <option value="" style="color: #DEDEDE;" ${response.cardSettleType == null ? 'selected' : ''}>Select </option>
										<option value="1" style="color: #DEDEDE;" ${response.cardSettleType == 1 ? 'selected' : ''}>T+1</option>
										<option value="2" style="color: #DEDEDE;" ${response.cardSettleType == 2 ? 'selected' : ''}>T+2</option>
										<option value="3" style="color: #DEDEDE;" ${response.cardSettleType == 3 ? 'selected' : ''}>T+3</option>
										<%-- <option value="4" style="color: #DEDEDE;" ${response.cardSettleType == 4 ? 'selected' : ''}>T+4</option> --%>
										<option value="5" style="color: #DEDEDE;" ${response.cardSettleType == 5 ? 'selected' : ''}>T+5</option>
			                        </select> <label class="control-label" >Settlement Period</label>
							</div>
							
							
                        	<%-- <div class="col s12 offset-m6 offset-l6 m3 l3 host_type_col">
                        		<select id="host_type_card" class="">
                        			<option value="">Select Host</option>
                        			<option value="MBB">MBB</option>
                        			<option value="CRL">CRL</option>
                        			<option value="AMB">AMB</option>
                        		</select>
                        		<span style="margin-left: 10px;" class="tooltipped" data-position="top" data-tooltip="Please choose the appropriate host for this payment type"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/info_grey.svg" width="25" height="25"></span>
                        	</div> --%>
                        	</div>
                        	
                        	<!-- card mdr details filling -->
                        
                        <div class="card_input_mdr">	
                         <c:if test="${type.contains('VISA')}">
                        	<div class="border_box">
                        	
                        	<div class="cardtype_img">
                        	<img src="${pageContext.request.contextPath}/resourcesNew1/assets/visacard.svg" width="25" height="25">
                        	</div>
                        	
                        	<!-- local credit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Local Credit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="visalocalcredit_merchant_mdr"
									id="visalocalcredit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.visaLocalCreditCardMDR}"> <label
									for="visalocalcredit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="visalocalcredit_host_mdr"
									id="visalocalcredit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.visaLocalCreditCardHostMDR}" >
								<label for="visalocalcredit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="visalocalcredit_mobi_mdr"
									id="visalocalcredit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.visaLocalCreditCardMobiMDR}" readonly >
								<label for="visalocalcredit_mobi_mdr" style="white-space: nowrap;" >Mobi
									MDR</label>
							</div>
		
						</div>
						
						<!-- local debit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Local Debit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="visalocaldebit_merchant_mdr"
									id="visalocaldebit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.visaLocalDebitCardMDR}"> <label
									for="visalocaldebit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="visalocaldebit_host_mdr"
									id="visalocaldebit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.visaLocalDebitCardHostMDR}" >
								<label for="visalocaldebit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="visalocaldebit_mobi_mdr"
									id="visalocaldebit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.visaLocalDebitCardMobiMDR}" readonly>
								<label for="visalocaldebit_mobi_mdr" style="white-space: nowrap;" >Mobi
									MDR</label>
							</div>
		
						</div>
						
						<!-- foreign credit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Foreign Credit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="visaforeigncredit_merchant_mdr"
									id="visaforeigncredit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.visaForeignCreditCardMDR}"> <label
									for="visaforeigncredit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="visaforeigncredit_host_mdr"
									id="visaforeigncredit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.visaForeignCreditCardHostMDR}" >
								<label for="visaforeigncredit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="visaforeigncredit_mobi_mdr"
									id="visaforeigncredit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.visaForeignCreditCardMobiMDR}" readonly>
								<label for="visaforeigncredit_mobi_mdr" style="white-space: nowrap;" >Mobi
									MDR</label>
							</div>
		
						</div>
						
						<!-- foreign debit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Foreign Debit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="visaforeigndebit_merchant_mdr"
									id="visaforeigndebit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.visaForeignDebitCardMDR}"> <label
									for="visaforeigndebit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="visaforeigndebit_host_mdr"
									id="visaforeigndebit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.visaForeignDebitCardHostMDR}" >
								<label for="visaforeigndebit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="visaforeigndebit_mobi_mdr"
									id="visaforeigndebit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.visaForeignDebitCardMobiMDR}" readonly >
								<label for="visaforeigndebit_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
		
						</div>
                        	
                        	
                    </div>
                    </c:if>
                    
                    
                    <!-- master card -->
                    
                     <c:if test="${type.contains('MASTER')}">
                    <div class="border_box">
                        	
                        	<div class="cardtype_img">
                        	<img src="${pageContext.request.contextPath}/resourcesNew1/assets/mastercard.svg" width="25" height="25">
                        	</div>
                        	
                        	<!-- local credit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Local Credit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="masterlocalcredit_merchant_mdr"
									id="masterlocalcredit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.masterLocalCreditCardMDR}"> <label
									for="masterlocalcredit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="masterlocalcredit_host_mdr"
									id="masterlocalcredit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.masterLocalCreditCardHostMDR}" >
								<label for="masterlocalcredit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="masterlocalcredit_mobi_mdr"
									id="masterlocalcredit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.masterLocalCreditCardMobiMDR}" readonly>
								<label for="masterlocalcredit_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
		
						</div>
						
						<!-- local debit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Local Debit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="masterlocaldebit_merchant_mdr"
									id="masterlocaldebit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.masterLocalDebitCardMDR}"> <label
									for="masterlocaldebit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="masterlocaldebit_host_mdr"
									id="masterlocaldebit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.masterLocalDebitCardHostMDR}" >
								<label for="masterlocaldebit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="masterlocaldebit_mobi_mdr"
									id="masterlocaldebit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.masterLocalDebitCardMobiMDR}" readonly>
								<label for="masterlocaldebit_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
		
						</div>
						
						<!-- foreign credit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Foreign Credit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="masterforeigncredit_merchant_mdr"
									id="masterforeigncredit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.masterForeignCreditCardMDR}"> <label
									for="masterforeigncredit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="masterforeigncredit_host_mdr"
									id="masterforeigncredit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.masterForeignCreditCardHostMDR}" >
								<label for="masterforeigncredit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="masterforeigncredit_mobi_mdr"
									id="masterforeigncredit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.masterForeignCreditCardMobiMDR}" disabled>
								<label for="masterforeigncredit_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
		
						</div>
						
						<!-- foreign debit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Foreign Debit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="masterforeigndebit_merchant_mdr"
									id="masterforeigndebit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.masterForeignDebitCardMDR}"> <label
									for="masterforeigndebit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="masterforeigndebit_host_mdr"
									id="masterforeigndebit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.masterForeignDebitCardHostMDR}" >
								<label for="masterforeigndebit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="masterforeigndebit_mobi_mdr"
									id="masterforeigndebit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.masterForeignDebitCardMobiMDR}" readonly>
								<label for="masterforeigndebit_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
		
						</div>
                        	
                        	
                    </div>
                    </c:if>
                      <!-- union card -->
                    
                     <c:if test="${type.contains('UNIONPAY')}">
                    <div class="border_box">
                        	
                        	<div class="cardtype_img">
                        	<img src="${pageContext.request.contextPath}/resourcesNew1/assets/unionpay.svg" width="25" height="25">
                        	</div>
                        	
                        	<!-- local credit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Local Credit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="unionpaylocalcredit_merchant_mdr"
									id="unionpaylocalcredit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.unionPayLocalCreditCardMDR}"> <label
									for="unionpaylocalcredit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="unionpaylocalcredit_host_mdr"
									id="unionpaylocalcredit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.unionpayLocalCreditCardHostMDR}" >
								<label for="unionpaylocalcredit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="unionpaylocalcredit_mobi_mdr"
									id="unionpaylocalcredit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.unionpayLocalCreditCardMobiMDR}" readonly>
								<label for="unionpaylocalcredit_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
		
						</div>
						
						<!-- local debit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Local Debit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="unionpaylocaldebit_merchant_mdr"
									id="unionpaylocaldebit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.unionPayLocalDebitCardMDR}"> <label
									for="unionpaylocaldebit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="unionpaylocaldebit_host_mdr"
									id="unionpaylocaldebit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.unionpayLocalDebitCardHostMDR}" >
								<label for="unionpaylocaldebit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="unionpaylocaldebit_mobi_mdr"
									id="unionpaylocaldebit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.unionpayLocalDebitCardMobiMDR}" readonly>
								<label for="unionpaylocaldebit_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
		
						</div>
						
						<!-- foreign credit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Foreign Credit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="unionpayforeigncredit_merchant_mdr"
									id="unionpayforeigncredit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.unionPayForeignCreditCardMDR}"> <label
									for="unionpayforeigncredit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="unionpayforeigncredit_host_mdr"
									id="unionpayforeigncredit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.unionpayForeignCreditCardHostMDR}" >
								<label for="unionpayforeigncredit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="unionpayforeigncredit_mobi_mdr"
									id="unionpayforeigncredit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.unionpayForeignCreditCardMobiMDR}" readonly>
								<label for="unionpayforeigncredit_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
		
						</div>
						
						<!-- foreign debit   -->
                        	<div class="row display_flex">
                        	
                        	<div class="col s12 m3 l4 input-field flex-lg " >
								<p class="payment_head_text">Foreign Debit MDR (%)</p>
							</div>
						
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="unionpayforeigndebit_merchant_mdr"
									id="unionpayforeigndebit_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.unionPayForeignDebitCardMDR}"> <label
									for="unionpayforeigndebit_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="unionpayforeigndebit_host_mdr"
									id="unionpayforeigndebit_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.unionpayForeignDebitCardHostMDR}" >
								<label for="unionpayforeigndebit_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="unionpayforeigndebit_mobi_mdr"
									id="unionpayforeigndebit_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.unionpayForeignDebitCardMobiMDR}" readonly >
								<label for="unionpayforeigndebit_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
		
						</div>
                        	
                        	
                    </div>
                    </c:if>
                    
                    </div>
                    </div>
                    </c:if>
                    
                    <c:if test="${type.contains('BOOST') || type.contains('GRAB') || type.contains('SHOPPY') || type.contains('TNG')}">

                    <div id="test5" class="col s12">
                    
                    <c:if test="${type.contains('BOOST')}">
                        <div class="row head_row">
                        	<div class="col s12 m3 l3 ">
                        		<p class="payment_head_text">Boost MDR (%)</p>
                        	</div>
                        	<%-- <div class="col s12 offset-m6 offset-l6 m3 l3 host_type_col">
                        		<select id="host_type_boost" class="">
                        			<option value="">Select Host</option>
                        			<option value="MBB">MBB</option>
                        			<option value="CRL">CRL</option>
                        			<option value="AMB">AMB</option>
                        		</select>
                        		<span style="margin-left: 10px;" class="tooltipped" data-position="top" data-tooltip="Please choose the appropriate host for this payment type"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/info_grey.svg" width="25" height="25"></span>
                        	</div> --%>
                        	
                        </div>
                        
                        
                		<div class="row display_flex">
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="boost_merchant_mdr"
									id="boost_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.boostMerchantMDR}"> <label
									for="boost_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="boost_host_mdr"
									id="boost_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.boostHostMDR}" >
								<label for="boost_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="boost_mobi_mdr"
									id="boost_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.boostMobiMDR}" readonly>
								<label for="boost_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="boost_min_value"
									id="boost_min_value" type="text" inputmode="decimal"
									class="" value="${response.boostMinimumMDR}"> <label
									for="boost_min_value" style="white-space: nowrap;">Minimum
									Value</label>
							</div>
							
							<div class="col s12 m4 l2 input-field settle_period_select_col flex-lg ${isSubMerchant ? 'disabled' : ''}">
							
						<select name="settle_period" id="settle_period_boost" onchange="">
                             <option value="" style="color: #DEDEDE;" ${response.boostSettleType == null ? 'selected' : ''}>Select </option>
							<option value="1" style="color: #DEDEDE;" ${response.boostSettleType == 1 ? 'selected' : ''}>T+1</option>
							<option value="2" style="color: #DEDEDE;" ${response.boostSettleType == 2 ? 'selected' : ''}>T+2</option>
							<option value="3" style="color: #DEDEDE;" ${response.boostSettleType == 3 ? 'selected' : ''}>T+3</option>
							<%-- <option value="4" style="color: #DEDEDE;" ${response.boostSettleType == 4 ? 'selected' : ''}>T+4</option> --%>
							<option value="5" style="color: #DEDEDE;" ${response.boostSettleType == 5 ? 'selected' : ''}>T+5</option>
                        </select> <label class="control-label" >Settlement Period</label>
							</div>
						</div>
						</c:if>
						
						<!-- grab  -->
						<c:if test="${type.contains('GRAB')}">
						<div class="row head_row">
                        	<div class="col s12 m3 l3 ">
                        		<p class="payment_head_text">Grabpay MDR (%)</p>
                        	</div>
                        	<%-- <div class="col s12 offset-m6 offset-l6 m3 l3 host_type_col">
                        		<select id="host_type_grab" class="">
                        			<option value="">Select Host</option>
                        			<option value="MBB">MBB</option>
                        			<option value="CRL">CRL</option>
                        			<option value="AMB">AMB</option>
                        		</select>
                        		<span style="margin-left: 10px;" class="tooltipped" data-position="top" data-tooltip="Please choose the appropriate host for this payment type"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/info_grey.svg" width="25" height="25"></span>
                        	</div> --%>
                        	
                        </div>
                        
                        
                		<div class="row display_flex">
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="grab_merchant_mdr"
									id="grab_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.grabMerchantMDR}"> <label
									for="grab_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="grab_host_mdr"
									id="grab_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.grabHostMDR}" >
								<label for="grab_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="grab_mobi_mdr"
									id="grab_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.grabMobiMDR}" readonly >
								<label for="grab_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="grab_min_value"
									id="grab_min_value" type="text" inputmode="decimal"
									class="" value="${response.grabMinimumMDR}"> <label
									for="grab_min_value" style="white-space: nowrap;">Minimum
									Value</label>
							</div>
							
							<div class="col s12 m4 l2 input-field settle_period_select_col flex-lg ${isSubMerchant ? 'disabled' : ''}">
							
						<select name="settle_period" id="settle_period_grabpay" onchange="">
                             	<option value="" style="color: #DEDEDE;"  ${response.grabSettleType == null ? 'selected' : ''}>Select </option>
								<option value="1" style="color: #DEDEDE;" ${response.grabSettleType == 1 ? 'selected' : ''}>T+1</option>
								<option value="2" style="color: #DEDEDE;" ${response.grabSettleType == 2 ? 'selected' : ''}>T+2</option>
								<option value="3" style="color: #DEDEDE;" ${response.grabSettleType == 3 ? 'selected' : ''}>T+3</option>
								<%-- <option value="4" style="color: #DEDEDE;" ${response.grabSettleType == 4 ? 'selected' : ''}>T+4</option> --%>
								<option value="5" style="color: #DEDEDE;" ${response.grabSettleType == 5 ? 'selected' : ''}>T+5</option>
                        </select> <label class="control-label" >Settlement Period</label>
							</div>
						</div>
						</c:if>
						
						
						<!-- tng  -->
						<c:if test="${type.contains('TNG')}">
						<div class="row head_row">
                        	<div class="col s12 m3 l3 ">
                        		<p class="payment_head_text">Touch'n Go MDR (%)</p>
                        	</div>
                        	<%-- <div class="col s12 offset-m6 offset-l6 m3 l3 host_type_col">
                        		<select id="host_type_tng" class="">
                        			<option value="">Select Host</option>
                        			<option value="MBB">MBB</option>
                        			<option value="CRL">CRL</option>
                        			<option value="AMB">AMB</option>
                        		</select>
                        		<span style="margin-left: 10px;" class="tooltipped" data-position="top" data-tooltip="Please choose the appropriate host for this payment type"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/info_grey.svg" width="25" height="25"></span>
                        	</div> --%>
                        	
                        </div>
                        
                        
                		<div class="row display_flex">
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="tng_merchant_mdr"
									id="tng_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.tngMerchantMDR}"> <label
									for="tng_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="tng_host_mdr"
									id="tng_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.tngHostMDR}" >
								<label for="tng_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="tng_mobi_mdr"
									id="tng_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.tngMobiMDR}" readonly>
								<label for="tng_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="tng_min_value"
									id="tng_min_value" type="text" inputmode="decimal"
									class="" value="${response.tngMinimumMDR}"> <label
									for="tng_min_value" style="white-space: nowrap;">Minimum
									Value</label>
							</div>
							
							<div class="col s12 m4 l2 input-field settle_period_select_col flex-lg ${isSubMerchant ? 'disabled' : ''}">
							
						<select name="settle_period" id="settle_period_tng" onchange="">
                             <option value="" style="color: #DEDEDE;" ${response.tngSettleType == null ? 'selected' : ''}>Select </option>
							<option value="1" style="color: #DEDEDE;" ${response.tngSettleType == 1 ? 'selected' : ''}>T+1</option>
							<option value="2" style="color: #DEDEDE;" ${response.tngSettleType == 2 ? 'selected' : ''}>T+2</option>
							<option value="3" style="color: #DEDEDE;" ${response.tngSettleType == 3 ? 'selected' : ''}>T+3</option>
							<%-- <option value="4" style="color: #DEDEDE;" ${response.tngSettleType == 4 ? 'selected' : ''}>T+4</option> --%>
							<option value="5" style="color: #DEDEDE;" ${response.tngSettleType == 5 ? 'selected' : ''}>T+5</option>
                        </select> <label class="control-label" >Settlement Period</label>
							</div>
						</div>
						</c:if>
						<!-- spp  -->
						<c:if test="${type.contains('SHOPPY')}">
						<div class="row head_row">
                        	<div class="col s12 m3 l3 ">
                        		<p class="payment_head_text">Shopee Pay MDR (%)</p>
                        	</div>
                        	<%-- <div class="col s12 offset-m6 offset-l6 m3 l3 host_type_col">
                        		<select id="host_type_spp" class="">
                        			<option value="">Select Host</option>
                        			<option value="MBB">MBB</option>
                        			<option value="CRL">CRL</option>
                        			<option value="AMB">AMB</option>
                        		</select>
                        		<span style="margin-left: 10px;" class="tooltipped" data-position="top" data-tooltip="Please choose the appropriate host for this payment type"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/info_grey.svg" width="25" height="25"></span>
                        	</div> --%>
                        	
                        </div>
                        
                        
                		<div class="row display_flex">
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="spp_merchant_mdr"
									id="spp_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.sppMerchantMDR}"> <label
									for="spp_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="spp_host_mdr"
									id="spp_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.sppHostMDR}" >
								<label for="spp_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="spp_mobi_mdr"
									id="spp_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.sppMobiMDR}" readonly >
								<label for="spp_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="spp_min_value"
									id="spp_min_value" type="text" inputmode="decimal"
									class="" value="${response.sppMinimumMDR}"> <label
									for="boost_min_value" style="white-space: nowrap;">Minimum
									Value</label>
							</div>
							
							<div class="col s12 m4 l2 input-field settle_period_select_col flex-lg ${isSubMerchant ? 'disabled' : ''}">
							
						<select name="settle_period" id="settle_period_spp" onchange="">
                            <option value="" style="color: #DEDEDE;" ${response.sppSettleType == null ? 'selected' : ''}>Select </option>
							<option value="1" style="color: #DEDEDE;" ${response.sppSettleType == 1 ? 'selected' : ''}>T+1</option>
							<option value="2" style="color: #DEDEDE;" ${response.sppSettleType == 2 ? 'selected' : ''}>T+2</option>
							<option value="3" style="color: #DEDEDE;" ${response.sppSettleType == 3 ? 'selected' : ''}>T+3</option>
							<%-- <option value="4" style="color: #DEDEDE;" ${response.sppSettleType == 4 ? 'selected' : ''}>T+4</option> --%>
							<option value="5" style="color: #DEDEDE;" ${response.sppSettleType == 5 ? 'selected' : ''}>T+5</option>
                        </select> <label class="control-label" >Settlement Period</label>
							</div>
						</div>
						</c:if>
                    </div>
                   
                   </c:if>
                   
                   <c:if test="${type.contains('DUITNOWQR')}">
                    <div id="test6" class="col s12">
                       <!-- Duitnow QR  -->
						
						<div class="row head_row">
                        	<div class="col s12 m3 l3 ">
                        		<p class="payment_head_text">DuitNow QR MDR (%)</p>
                        	</div>
                        	<%-- <div class="col s12 offset-m6 offset-l6 m3 l3 host_type_col">
                        		<select id="host_type_dnqr" class="">
                        			<option value="">Select Host</option>
                        			<option value="MBB">MBB</option>
                        			<option value="CRL">CRL</option>
                        			<option value="AMB">AMB</option>
                        		</select>
                        		<span style="margin-left: 10px;" class="tooltipped" data-position="top" data-tooltip="Please choose the appropriate host for this payment type"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/info_grey.svg" width="25" height="25"></span>
                        	</div> --%>
                        	
                        </div>
                        
                        
                		<div class="row display_flex">
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="dnqr_merchant_mdr"
									id="dnqr_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.duitNowQrMerchantMDR}"> <label
									for="dnqr_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="dnqr_host_mdr"
									id="dnqr_host_mdr" type="text" inputmode="decimal"
									class="" value="${response.duitNowQrHostMDR}" >
								<label for="dnqr_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="dnqr_mobi_mdr"
									id="dnqr_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.duitNowQrMobiMDR}" readonly >
								<label for="dnqr_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
							<div class="col s12 m4 l2 input-field flex-lg " >
								<input placeholder="0.0" name="dnqr_min_value"
									id="dnqr_min_value" type="text" inputmode="decimal"
									class="" value="${response.duitNowQrMinimumMDR}"> <label
									for="dnqr_min_value" style="white-space: nowrap;">Minimum
									Value</label>
							</div>
							
							<div class="col s12 m4 l2 input-field settle_period_select_col flex-lg ${isSubMerchant ? 'disabled' : ''}">
							
						<select name="settle_period" id="settle_period_dnqr" onchange="">
                             <option value="" style="color: #DEDEDE;" ${response.duitNowQrSettleType == null ? 'selected' : ''}>Select </option>
							<option value="1" style="color: #DEDEDE;" ${response.duitNowQrSettleType == 1 ? 'selected' : ''}>T+1</option>
							<option value="2" style="color: #DEDEDE;" ${response.duitNowQrSettleType == 2 ? 'selected' : ''}>T+2</option>
							<option value="3" style="color: #DEDEDE;" ${response.duitNowQrSettleType == 3 ? 'selected' : ''}>T+3</option>
							<%-- <option value="4" style="color: #DEDEDE;" ${response.duitNowQrSettleType == 4 ? 'selected' : ''}>T+4</option> --%>
							<option value="5" style="color: #DEDEDE;" ${response.duitNowQrSettleType == 5 ? 'selected' : ''}>T+5</option>
                        </select> <label class="control-label" >Settlement Period</label>
							</div>
						</div>
                    </div>
                    </c:if>
                    
                    <c:if test="${type.contains('PAYOUT')}">
                    <div id="test7" class="col s12">
                        <!-- payout  -->
						
						<div class="row head_row">
                        	<div class="col s12 m3 l3 ">
                        		<p class="payment_head_text">Payout MDR (%)</p>
                        	</div>
                        	<%-- <div class="col s12 offset-m6 offset-l6 m3 l3 host_type_col">
                        		<select id="host_type_payout" class="">
                        			<option value="">Select Host</option>
                        			<option value="MBB">MBB</option>
                        			<option value="CRL">CRL</option>
                        			<option value="AMB">AMB</option>
                        		</select>
                        		<span style="margin-left: 10px;" class="tooltipped" data-position="top" data-tooltip="Please choose the appropriate host for this payment type"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/info_grey.svg" width="25" height="25"></span>
                        	</div>
                        	 --%>
                        </div>
                        
                        
                		<div class="row display_flex">
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="payout_merchant_mdr"
									id="payout_merchant_mdr" type="text" class=""
									inputmode="decimal"
									value="${response.payoutMerchantMDR}"> <label
									for="payout_merchant_mdr" style="white-space: nowrap;">Merchant
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field  flex-lg" >
								<input placeholder="0.0" name="payout_host_mdr"
									id="payout_host_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.payoutHostMDR}" readonly>
								<label for="payout_host_mdr" style="white-space: nowrap;">Host
									MDR</label>
							</div>
							<div class="col s12 m3 l2 input-field flex-lg " >
								<input placeholder="0.0" name="payout_mobi_mdr"
									id="payout_mobi_mdr" type="text" inputmode="decimal"
									class="disabled" value="${response.payoutMobiMDR}" readonly >
								<label for="payout_mobi_mdr" style="white-space: nowrap;">Mobi
									MDR</label>
							</div>
						 	<div class="col s12 m2 l2 input-field flex-lg " >
								<input placeholder="0.0" name="payout_min_value"
									id="payout_min_value" type="text" inputmode="decimal"
									class="" value="${response.payoutMinimumMDR}"> <label
									for="payout_min_value" style="white-space: nowrap;">Minimum
									Value</label>
							</div> 
							
						</div>
                    </div>
                    </c:if>
                </div>
                </div>

				<p id="error_message" style="color: red;font-size: 12px; font-family: 'Poppins';text-align: center;
    margin: 6px"></p>
            </div>
        </div>
    </div>
    
   					 <div class="row">
						<div class="col input-field s12">
								<div style="text-align: center;">
								<button type="button" id="clear_btn" class="btn btn-primary disabled"
								style="padding: 0 20px;">Reset</button>
								<button type="button" id="submit_btn" onclick="" class="btn btn-primary disabled"
								style="padding: 0 20px;">Submit</button>
								</div>
						</div>
					</div>
    
</div>
</c:if>					
					


					
					
					
				</div>
				
				
				
			</div>
			
			
			
			
			
		</div>
		</c:if>
		
		<!-- confirmation popup -->
		
		<div class="confirm_overlay" id="confirm_overlay">
        <div class="row modal_row">
            <div class="col offset-l4 offset-m3 s12 m6 l4">
                <div id="confirm_modal" class="confirm_modal">
                    <div class="modal-header">
                        <p class="mb-0">Confirmation</p>
                    </div>
                    <div class="modal-content ">
                        <div class="align-center">
                            <img src="${pageContext.request.contextPath}/resourcesNew1/assets/confirmation.svg" width="50" height="50">
                        </div>
                        <p class="align-center popup_messages">Would you like to proceed with these MDR rates?</p>
                        
                        
                        <c:if test="${isSubMerchant}">
                        <form id="hiddenForm" action="${pageContext.request.contextPath}/editMdr/updateSubMerchantMdr/" method="post" style="display: none;">
						
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
						<input type="hidden" name="updateMdrDetailsOfSubMerchant" id="updateMdrDetails"> 
						<input type="hidden" name="submerchant_mid" id="submerchant_mid" value="${midToUpdateMDR_submerchant}"> 
						<input type="hidden" name="businessName" id="businessName" value="${businessName}">
						<input type="hidden" name="submerchant_businessName" id="submerchant_businessName" value="${subMerchantBusinessName}">
						<input type="hidden" id="merchantId" name="merchantId" value="${merchantId}">
						<input type="hidden" id="submerchantId" name="submerchantId" value="${submerchantMerchantId}">
								 
						</form>
						</c:if>
						
						 <c:if test="${!isSubMerchant}">
                        <form id="hiddenForm" action="${pageContext.request.contextPath}/editMdr/updateMdr/" method="post" style="display: none;">
						
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
						<input type="hidden" name="updateMdrDetails" id="updateMdrDetails"> 
						<input type="hidden" name="mid" id="mid" value="${mid}"> 
						<input type="hidden" name="businessName" id="businessName" value="${businessName}">
						<input type="hidden" id="merchantId" name="merchantId" value="${merchantId}">
						</form>
						</c:if>

                    </div>
                    <div class="align-center modal-footer footer">
                        <button id="close_confirm_mainmerchant_btn" class="btn cancelbtn" type="button" onclick="closeConfirmPopup()" name="action">Cancel</button>
                        <button id="confirm_mainmerchant_btn" class="btn confirmbtn " type="button" onclick="openPopupModal()" name="action">Confirm</button>                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!--  result popup -->
    
    <div class="outer_overlay" id="outer_overlay">
        <div class="row modal_row">
            <div class="col offset-l4 offset-m3 s12 m6 l4">
                <div id="update_popup-modal" class="update_popup-modal">
                    <div class="modal-header">
                        <p class="mb-0">Notification</p>
                    </div>
                    <div class="modal-content ">
                        <div class="align-center" id="resultImg">
                            <img src="${pageContext.request.contextPath}/resourcesNew1/assets/Successful.svg" width="50" height="50">
                        </div>
                        <p class="align-center popup_messages" id="resultText">MDR rates successfully updated.</p>
                    </div>
                    <div class=" align-center modal-footer footer">
                        <button id="closesuccess" class="btn blue-btn closebtn" type="button" onclick="closePopupModal()" name="action">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
		
		<input type="hidden" id="isSubMerchant" value="${isSubMerchant}" />
		<input type="hidden" id="responseType" value="${response.type}" />
		
		
		<c:choose>
	    <c:when test="${isSubMerchant}">
	        <input type="hidden" id="midToUpdateMDR" value="${midToUpdateMDR_submerchant}" />
	    </c:when>
    	<c:otherwise>
        	<input type="hidden" id="midToUpdateMDR" value="${mid}" />
    	</c:otherwise>
		</c:choose>

		
		<input type="hidden" id="updated" value="${updated}">
</div>





		<!-- Script -->
		<script type="text/javascript">
		
		
		
		function toggleMDRCard() {
		    const mdr_card = document.getElementById("mdr_fill_card");
		    
		    if (mdr_card.style.display === "none" || getComputedStyle(mdr_card).display === "none") {
		        mdr_card.style.display = "block";
		    } else {
		        mdr_card.style.display = "none";
		    }
		}

		const subTab = document.getElementById("submerchant_tab_id");
		const masterTab = document.getElementById("mastermerchant_tab_id");

		if (subTab) {
		    subTab.addEventListener('click', toggleMDRCard);
		}

		if (masterTab) {
		    masterTab.addEventListener('click', toggleMDRCard);
		}

	
		
 
		function openConfirmPopup(){
		  	  document.getElementById("confirm_overlay").style.display = "block";
		  	
		  			
		    }
		    
		    function closeConfirmPopup(){
		    	  document.getElementById("confirm_overlay").style.display = "none";
		    }
		    
		    function openPopupModal(){
		    	closeConfirmPopup();
		    	submitMainMerchantMdrDetails();
			 }
		    
		    function openResultPopup(){
		    	var updated = document.getElementById("updated").value;
		    	var element =  document.getElementById("outer_overlay");
		    	var resultImg =  document.getElementById("resultImg");
		    	var resultText =  document.getElementById("resultText");
		    	if(updated == "true"){
		    		element.style.display = "block";
		    	}else if(updated == "false"){
		    		element.style.display = "block";
		    		resultText.innerText = "We encountered a technical issue. Please try again later.";
		    		resultImg.src = "${pageContext.request.contextPath}/resourcesNew1/assets/Declined.svg";
		    	}else {
		    		element.style.display = "none";
		    	}
		    	
		    }
		    
		    $(document).ready(function(){
		    	openResultPopup();
		      });
		    
		    function closePopupModal() {
		    	  document.getElementById("outer_overlay").style.display = "none";
		    	}
		
    
		    VirtualSelect.init({
				ele : '#merchantName', 
				search: true
			});
		    
		    [
		    	  '#host_type_fpx'
		    	 /*  '#host_type_card',
		    	  '#host_type_boost',
		    	  '#host_type_grab',
		    	  '#host_type_tng',
		    	  '#host_type_spp',
		    	  '#host_type_dnqr',
		    	  '#host_type_payout' */
		    	].forEach(selector => {
		    	  VirtualSelect.init({ ele: selector });
		    	});
		    
		    VirtualSelect.init({
	            ele: '#mainMerchantName',
	            placeholder: 'Choose Merchant',
	            disabled: true
	            
	        });
		    
		    VirtualSelect.init({
				ele : '#mainMerchantMid',
				search: true
			});
		    
		    VirtualSelect.init({
				ele : '#subMerchantName',
				search: true
			});
		    
		    VirtualSelect.init({
				ele : '#subMerchantMid',
				search: true
			});
		    
		    
		    $(document).ready(function(){
		        $('.tabs').tabs();
		      });
		    
		     $(document).ready(function(){
		    	 
		    	 $('#host_type_fpx').on('change', function() {
					 const selectedId = this.value;	
				        if (selectedId) {
				        	getMDROfFpxByHostType(selectedId,'${response.fpxHostMDR}','${response.fpxMobiMDR}','${response.fpxCurlecHostMDR}','${response.fpxCurlecMobiMDR}');
				        }
				});
			    
			    function getMDROfFpxByHostType(hosttype,hostMdr,mobiMdr, curlecHostMdr, curlecMobiMdr){
			    	
			        //	console.log("response : "+hosttype+" : "+hostMdr+":"+mobiMdr+":"+curlecHostMdr+":"+curlecMobiMdr);
			        	
			        	var hostmdrValue = document.getElementById('fpx_host_mdr');
			        	var mobiMdrValue = document.getElementById('fpx_mobi_mdr');
			        	if(hosttype == 'PN01'){
			        		hostmdrValue.value = hostMdr;
			        		mobiMdrValue.value = mobiMdr;
			        	}else if(hosttype == 'CL02'){
			        		hostmdrValue.value = curlecHostMdr;
			        		mobiMdrValue.value = curlecMobiMdr;
			        	}else {
							hostmdrValue.value = hostMdr;
							mobiMdrValue.value = mobiMdr;
						}
			        
			        }

			    <%--if('${response}'){--%>
			    <%--	--%>
			    <%--    getMDROfFpxByHostType(--%>
			    <%--    	'${response.fpxHostType}',  --%>
			    <%--        '${response.fpxHostMDR}', --%>
			    <%--        '${response.fpxMobiMDR}', --%>
			    <%--        '${response.fpxCurlecHostMDR}',--%>
			    <%--        '${response.fpxCurlecMobiMDR}');--%>
			    <%--	}--%>

		      });
	    </script>
	    
	    
	    
	    
	    <script>
	    
	    
	    function validateSelectMerchant() {
			var merchantSelect = document.getElementById("merchantName");
			var submitButton = document.getElementById("searchButton");

			var isEmpty = merchantSelect.value !== "";

			console.log("merchant selection is not empty  : ", isEmpty);
			var areMerchantsSelected = merchantSelect.value.length > 0;

			if (isEmpty && areMerchantsSelected) {
				submitButton.disabled = false;
				submitButton.style.opacity = 1;
				submitButton.style.pointerEvents = "auto";
			} else {
				submitButton.disabled = true;
				submitButton.style.opacity = 0.5;
				submitButton.style.pointerEvents = "none";

			}
		}

	    validateSelectMerchant();
	    
	    $(document).ready(function() {

			$('#merchantName').on('change', function() {
				validateSelectMerchant();

			});
			
			$('#subMerchantName').on('change', function() {
				 const selectedId = this.value;
				 const mainMerchantId = document.getElementById("merchantId1").value;
			        if (selectedId && mainMerchantId) {
			        	fetchSubMidList(selectedId, mainMerchantId);
			        }
			});
			
			$('#mainMerchantMid').on('change', function() {
				 const selectedId = this.value;		
			        if (selectedId) {
			        	getMDROfMainMerchant(selectedId)
			        }
			});
			
			$('#subMerchantMid').on('change', function() {
				 const selectedId = this.value;
				 
			        if (selectedId){
			        	getMDROfSubMerchant(selectedId)
			        }
			});
			
			
		});
	    
	    
	    
	    /* reset functionality  */
$(document).ready(function () {
    const isSubMerchant = $('#isSubMerchant').val() === 'true';
    const type = $('#responseType').val();

    // Enable or disable the button based on type
    // if (type && type.trim() !== '') {
    //     $('#clear_btn').removeClass('disabled');
    // } else {
    //     $('#clear_btn').addClass('disabled');
    // }

    // Handle reset button click
    $('#clear_btn').on('click', function () {
        if (!$(this).hasClass('disabled')) {
            if (isSubMerchant) {
                const mid = $('#subMerchantMid').val();
                getMDROfSubMerchant(mid);
            } else {
                const mid = $('#mainMerchantMid').val();
                getMDROfMainMerchant(mid);
            }
        }
    });
});

	    
	    
	    
	    
	    function loadSearch(){
	    	$("#overlay").show();
	    	var merchantSelect = document.getElementById("merchantName").value;
	    	document.location.href = '${pageContext.request.contextPath}/editMdr/getMidList?id='+merchantSelect;
	    }
	    
	    function fetchSubMidList(submid, mainmerchant_id){
	    	$("#overlay").show();
	    	document.location.href = '${pageContext.request.contextPath}/editMdr/getSubMidList?id='
	    	    + submid+ '&mainMerchantId=' +mainmerchant_id;
	    }
	    
	    function getMDROfMainMerchant(mid){
	    	
			 const mainMerchantId = document.getElementById("merchantId1").value;
			 const businessNameFromBackend = document.getElementById("businessNameFromBackend").value;
	    	 const encodedBusinessName = encodeURIComponent(businessNameFromBackend);
	    	 $("#overlay").show();
	    		document.location.href = '${pageContext.request.contextPath}/editMdr/getMdr?mid='
	    	    + mid+ '&id=' +mainMerchantId+'&businessName=' +encodedBusinessName;
	    }
	    
	    function getMDROfSubMerchant(mid){
	    	
	    	const mainMerchantId = document.getElementById("merchantId1").value;
			const submerchantMerchantId = document.getElementById("submerchantMerchantId").value;
			const businessNameFromBackend = document.getElementById("businessNameFromBackend").value;
			const submerchantBusinessNameFromBackend = document.getElementById("submerchantBusinessNameFromBackend").value;
	    	
			const encodedBusinessName = encodeURIComponent(businessNameFromBackend);
			const encodedSubBusinessName = encodeURIComponent(submerchantBusinessNameFromBackend);

			 $("#overlay").show();
		    document.location.href = '${pageContext.request.contextPath}/editMdr/getSubMerchantMdr?mid='
		        + mid + '&id=' + mainMerchantId + '&submerchantId=' + submerchantMerchantId
		        + '&businessName=' + encodedBusinessName + '&subMerchantBusinessName=' + encodedSubBusinessName;
	    }
	    
	    
	    var ids = [
	        'fpx_merchant_mdr',
	    	'fpx_host_mdr',
	        'fpx_mobi_mdr',
	        'fpx_min_value',
	        'settle_period_fpx',
	        'visalocaldebit_merchant_mdr',
	        'visalocalcredit_merchant_mdr',
	        'visaforeigndebit_merchant_mdr',
	        'visaforeigncredit_merchant_mdr',
	        'masterlocaldebit_merchant_mdr',
	        'masterlocalcredit_merchant_mdr',
	        'masterforeigndebit_merchant_mdr',
	        'masterforeigncredit_merchant_mdr',
	        'unionpaylocaldebit_merchant_mdr',
	        'unionpaylocalcredit_merchant_mdr',
	        'unionpayforeigndebit_merchant_mdr',
	        'unionpayforeigncredit_merchant_mdr',
	        'visalocaldebit_host_mdr',
	        'visalocalcredit_host_mdr',
	        'visaforeigndebit_host_mdr',
	        'visaforeigncredit_host_mdr',
	        'masterlocaldebit_host_mdr',
	        'masterlocalcredit_host_mdr',
	        'masterforeigndebit_host_mdr',
	        'masterforeigncredit_host_mdr',
	        'unionpaylocaldebit_host_mdr',
	        'unionpaylocalcredit_host_mdr',
	        'unionpayforeigndebit_host_mdr',
	        'unionpayforeigncredit_host_mdr',
	        'visalocaldebit_mobi_mdr',
	        'visalocalcredit_mobi_mdr',
	        'visaforeigndebit_mobi_mdr',
	        'visaforeigncredit_mobi_mdr',
	        'masterlocaldebit_mobi_mdr',
	        'masterlocalcredit_mobi_mdr',
	        'masterforeigndebit_mobi_mdr',
	        'masterforeigncredit_mobi_mdr',
	        'unionpaylocaldebit_mobi_mdr',
	        'unionpaylocalcredit_mobi_mdr',
	        'unionpayforeigndebit_mobi_mdr',
	        'unionpayforeigncredit_mobi_mdr',
	        'settle_period_card',
	        'boost_merchant_mdr',
	        'boost_host_mdr',
	        'boost_mobi_mdr',
	        'boost_min_value',
	        'settle_period_boost',
	        'grab_merchant_mdr',
	        'grab_host_mdr',
	        'grab_mobi_mdr',
	        'grab_min_value',
	        'settle_period_grabpay',
	        'tng_merchant_mdr',
	        'tng_host_mdr',
	        'tng_mobi_mdr',
	        'tng_min_value',
	        'settle_period_tng',
	        'spp_merchant_mdr',
	        'spp_host_mdr',
	        'spp_mobi_mdr',
	        'spp_min_value',
	        'settle_period_spp',
	        'dnqr_merchant_mdr',
	        'dnqr_host_mdr',
	        'dnqr_mobi_mdr',
	        'dnqr_min_value',
	        'settle_period_dnqr',
	        'payout_merchant_mdr',
	        'payout_host_mdr',
	        'payout_mobi_mdr',
	        'payout_min_value',
	        // 'host_type_fpx'
	        /* 'host_type_card',
	        'host_type_boost',
	        'host_type_grab',
	        'host_type_tng',
	        'host_type_spp',
	        'host_type_dnqr',
	        'host_type_payout' */
	    ];
	    
	    
	    ids.forEach(id => {
	        const input = document.getElementById(id);
	        var error_message = document.getElementById('error_message');

	        if (input) {
				input.addEventListener('change', function(event) {
					$('#clear_btn').removeClass('disabled');
					$('#submit_btn').removeClass('disabled');
				});
	            input.addEventListener('input', function(event) {

					$('#clear_btn').removeClass('disabled');
					$('#submit_btn').removeClass('disabled');

	            	error_message.style.display = "none";
	                var value = event.target.value;
	                const mdrValue = value.replace(/[^0-9]/g, '');
	                var formatedvalue = (parseFloat(mdrValue) / 100).toFixed(2);
	                var final_mdr = formatedvalue;
	                //console.log(isNaN(final_mdr));
	                if (isNaN(final_mdr)) {
	                    event.target.value = '0.00';
	                }else{
	                event.target.value = final_mdr;
	                }
	                //console.log("Final value : ", final_mdr);
	                
	                
	             // If input is a merchant MDR input, calculate mobi MDR
	                if (id.includes('merchant_mdr') && !id.includes('payout_merchant_mdr')) {
	                    // Extract the prefix to find the corresponding host MDR input
	                    const prefix = id.replace('_merchant_mdr', '');
	                    const hostInputId = prefix + '_host_mdr';
	                    const mobiInputId = prefix + '_mobi_mdr';

	                    // Find the host MDR input
	                    const hostInput = document.getElementById(hostInputId);
	                    if (hostInput) {
	                        // Get the values of merchant MDR and host MDR inputs
	                        const hostValue = parseFloat(hostInput.value) || 0;
	                        const merchantValue = parseFloat(final_mdr) || 0;

	                        // Calculate mobi MDR by adding merchant and host MDR values
	                        const mobiValue = (merchantValue - hostValue).toFixed(2);
	                        
	                       
	                       // Remove the leading minus sign, if present
			                   //  const mobimainmerchantmdr = mobiValue.toString().replace(/^(-)?/, '');
			                     const mobimainmerchantmdr = mobiValue.toString();
			
			                     // Set the calculated mobi MDR value
			                     const mobiInputMainMerchant = document.getElementById(mobiInputId);
			                     if (mobiInputMainMerchant) {
			                    	 mobiInputMainMerchant.value = mobimainmerchantmdr;
			                     }
	                    }
	                }
	             
	                else  if (id.includes('host_mdr') && !id.includes('payout_merchant_mdr')) {
	                    // Extract the prefix to find the corresponding host MDR input
	                    const prefix = id.replace('_host_mdr', '');
	                    const merchantInputId = prefix + '_merchant_mdr';
	                    const mobiInputId = prefix + '_mobi_mdr';

	                    // Find the host MDR input
	                    const merchantInput = document.getElementById(merchantInputId);
	                    if (merchantInput) {
	                        // Get the values of merchant MDR and host MDR inputs
	                        const merchantValue = parseFloat(merchantInput.value) || 0;
	                        const hostValue = parseFloat(final_mdr) || 0;

	                        // Calculate mobi MDR by adding merchant and host MDR values
	                        const mobiValue = (merchantValue - hostValue).toFixed(2);
	                        
	                       
	                       // Remove the leading minus sign, if present
			                   //  const mobimainmerchantmdr = mobiValue.toString().replace(/^(-)?/, '');
			                     const mobimainmerchantmdr = mobiValue.toString();
			
			                     // Set the calculated mobi MDR value
			                     const mobiInputMainMerchant = document.getElementById(mobiInputId);
			                     if (mobiInputMainMerchant) {
			                    	 mobiInputMainMerchant.value = mobimainmerchantmdr;
			                     }
	                    }
	                }	

	            });
	        }
	    });
	    
	    
	    const fieldNameMap = {
	    	    'fpx_merchant_mdr': 'FPX Merchant MDR',
	    	    'fpx_min_value': 'FPX Minimum Value',
	    	    'boost_merchant_mdr': 'Boost Merchant MDR',
	    	    'boost_min_value': 'Boost Minimum Value',
	    	    'grab_merchant_mdr': 'Grab Merchant MDR',
	    	    'grab_min_value': 'Grab Minimum Value',
	    	    'tng_merchant_mdr': 'TNG Merchant MDR',
	    	    'tng_min_value': 'TNG Minimum Value',
	    	    'spp_merchant_mdr': 'SPP Merchant MDR',
	    	    'spp_min_value': 'SPP Minimum Value',
	    	    'dnqr_merchant_mdr': 'DuitNow QR Merchant MDR',
	    	    'dnqr_min_value': 'DuitNow QR Minimum Value',
	    	    'payout_merchant_mdr': 'Payout Merchant MDR',
	    	    'payout_min_value': 'Payout Minimum Value'

				// Settle types
				// 'settle_period_fpx': 'FPX settle type',
				// 'settle_period_card': 'CARD settle type',
				// 'settle_period_boost': 'BOOST settle type',
				// 'settle_period_grabpay': 'GRAB settle type',
				// 'settle_period_tng': 'TNG settle type',
				// 'settle_period_spp': 'SPP settle type',
				// 'settle_period_dnqr': 'DUITNOW settle type'
	    	};

	    
	    $('#submit_btn').click(function () {
	        let isMdrOrMinValuePresent = false;
	        let isSettleTypeSame = false;
	        let isMinValueSame = false;

	        const error_msg = document.getElementById('error_message');

	        const mdrMinValueGroups = [
	            ['fpx_merchant_mdr', 'fpx_min_value'],
	            ['boost_merchant_mdr', 'boost_min_value'],
	            ['grab_merchant_mdr', 'grab_min_value'],
	            ['tng_merchant_mdr', 'tng_min_value'],
	            ['spp_merchant_mdr', 'spp_min_value'],
	            ['dnqr_merchant_mdr', 'dnqr_min_value'],
	            ['payout_merchant_mdr', 'payout_min_value']
	        ];

	        for (let j = 0; j < mdrMinValueGroups.length; j++) {
	            const [mdrId, minId] = mdrMinValueGroups[j];
	            const mdrElem = document.getElementById(mdrId);
	            const minElem = document.getElementById(minId);

	            if (mdrElem && minElem) {
	                const mdrVal = parseFloat(mdrElem.value || "0");
	                const minVal = parseFloat(minElem.value || "0");

	                if (mdrVal <= 0 && minVal <= 0) {
						isMdrOrMinValuePresent = true;
	                    error_msg.style.color = "red";
	                    error_msg.style.display = "block";
	                    error_msg.innerHTML = "Either " + fieldNameMap[mdrId] + " or " + fieldNameMap[minId] + " must be greater than 0.";
	                    // setTimeout(() => {
	                    //     error_msg.style.display = "none";
	                    // }, 3000);
	                    break;
	                }
	            }
	        }

            const productType = ["EZYWAY", "EZYMOTO"];
			isSettleTypeSame = validateEzyWayAndEzyMotoSettlementTypes(productType);
			isMinValueSame = validateEzyWayAndEzyMotoMinimumValue(productType);

	        if (!(isMdrOrMinValuePresent || isSettleTypeSame || isMinValueSame)) {
	            openConfirmPopup();
	        }

	    });



		function validateEzyWayAndEzyMotoSettlementTypes(productType) {
			const selectedMid = document.getElementById('mainMerchantMid').value;
			const isEzyMerchant = productType.some(keyword =>
					selectedMid.includes(keyword) || selectedMid.trim().endsWith(keyword)
			);

			console.log("Ezy:validating settletype for MID is: ", selectedMid);
			console.log("Checking: Is this Ezyway or Ezymoto: ", isEzyMerchant);

			if (isEzyMerchant) {
				const settleTypes = [
					document.getElementById('settle_period_fpx')?.value ?? "0",
					document.getElementById('settle_period_card')?.value ?? "0",
					document.getElementById('settle_period_boost')?.value ?? "0",
					document.getElementById('settle_period_grabpay')?.value ?? "0",
					document.getElementById('settle_period_tng')?.value ?? "0",
					document.getElementById('settle_period_spp')?.value ?? "0"
				];

				const firstValue = settleTypes[0];
				console.log("firstValue ", firstValue);

				const allEqual = settleTypes.every(value => value === firstValue);
				console.log("IsSettleTypeEquals: ", allEqual);

				if (!allEqual) {
					const error_msg = document.getElementById('error_message');
					error_msg.style.color = "red";
					error_msg.style.display = "block";
					error_msg.innerHTML = "FPX & eWallet & Card settle types must be the same for EZYWAY or EZYMOTO MID.";
					// setTimeout(() => {
					// 	error_msg.style.display = "none";
					// }, 3000);
					return true;
				} else
					return false;
			}
			return false;
		}

		function validateEzyWayAndEzyMotoMinimumValue(productType) {
			const selectedMid = document.getElementById('mainMerchantMid').value;
			const isEzyMerchant = productType.some(keyword =>
					selectedMid.includes(keyword) || selectedMid.trim().endsWith(keyword)
			);

			console.log("Ezy:validating min values for MID is: ", selectedMid);
			console.log("Checking: Is this Ezyway or Ezymoto: ", isEzyMerchant);

			if (isEzyMerchant) {

				const minValues = [
					document.getElementById('fpx_min_value')?.value ?? "0",
					document.getElementById('boost_min_value')?.value ?? "0",
					document.getElementById('grab_min_value')?.value ?? "0",
					document.getElementById('tng_min_value')?.value ?? "0",
					document.getElementById('spp_min_value')?.value ?? "0",
				];

				const firstValue = minValues[0];
				console.log("firstValue ", firstValue);

				const allEqual = minValues.every(value => value === firstValue);
				console.log("IsMinValueEquals: ", allEqual);

				if (!allEqual) {
					const error_msg = document.getElementById('error_message');
					error_msg.style.color = "red";
					error_msg.style.display = "block";
					error_msg.innerHTML = "FPX and eWallet min values must be the same for EZYWAY or EZYMOTO MID.";
					// setTimeout(() => {
					// 	error_msg.style.display = "none";
					// }, 3000);
					return true;
				} else
					return false;
			}
			return false;
		}


	    function collectAndSubmitFormData() {
	        var formData = {};

	        formData.fpx = {
	            merchantmdr: $('#fpx_merchant_mdr').val() || 0.00,
	            hostmdr: $('#fpx_host_mdr').val() || 0.00,
	            mobimdr: $('#fpx_mobi_mdr').val() || 0.00,
	            minimummdr: $('#fpx_min_value').val() || 0.00,
	            settletype: $('#settle_period_fpx').val() || 0.00,
	            hosttype: $('#host_type_fpx').val()
	        };

	        formData.cards = {
	            visa: {
	                localdebitmdr: $('#visalocaldebit_merchant_mdr').val(),
	                localcreditmdr: $('#visalocalcredit_merchant_mdr').val(),
	                foriegndebitmdr: $('#visaforeigndebit_merchant_mdr').val(),
	                foriegncreditmdr: $('#visaforeigncredit_merchant_mdr').val(),
	                
	                localdebithostmdr: $('#visalocaldebit_host_mdr').val(),
	                localcredithostmdr: $('#visalocalcredit_host_mdr').val(),
	                foriegndebithostmdr: $('#visaforeigndebit_host_mdr').val(),
	                foriegncredithostmdr: $('#visaforeigncredit_host_mdr').val(),
	                
	                localdebitmobimdr: $('#visalocaldebit_mobi_mdr').val(),
	                localcreditmobimdr: $('#visalocalcredit_mobi_mdr').val(),
	                foriegndebitmobimdr: $('#visaforeigndebit_mobi_mdr').val(),
	                foriegncreditmobimdr: $('#visaforeigncredit_mobi_mdr').val()
	            },
	            master: {
	                localdebitmdr: $('#masterlocaldebit_merchant_mdr').val(),
	                localcreditmdr: $('#masterlocalcredit_merchant_mdr').val(),
	                foriegndebitmdr: $('#masterforeigndebit_merchant_mdr').val(),
	                foriegncreditmdr: $('#masterforeigncredit_merchant_mdr').val(),
	                
	                localdebithostmdr: $('#masterlocaldebit_host_mdr').val(),
	                localcredithostmdr: $('#masterlocalcredit_host_mdr').val(),
	                foriegndebithostmdr: $('#masterforeigndebit_host_mdr').val(),
	                foriegncredithostmdr: $('#masterforeigncredit_host_mdr').val(),
	                
	                localdebitmobimdr: $('#masterlocaldebit_mobi_mdr').val(),
	                localcreditmobimdr: $('#masterlocalcredit_mobi_mdr').val(),
	                foriegndebitmobimdr: $('#masterforeigndebit_mobi_mdr').val(),
	                foriegncreditmobimdr: $('#masterforeigncredit_mobi_mdr').val()
	            },
	            union: {
	                localdebitmdr: $('#unionpaylocaldebit_merchant_mdr').val(),
	                localcreditmdr: $('#unionpaylocalcredit_merchant_mdr').val(),
	                foriegndebitmdr: $('#unionpayforeigndebit_merchant_mdr').val(),
	                foriegncreditmdr: $('#unionpayforeigncredit_merchant_mdr').val(),
	                
	                localdebithostmdr: $('#unionpaylocaldebit_host_mdr').val(),
	                localcredithostmdr: $('#unionpaylocalcredit_host_mdr').val(),
	                foriegndebithostmdr: $('#unionpayforeigndebit_host_mdr').val(),
	                foriegncredithostmdr: $('#unionpayforeigncredit_host_mdr').val(),
	                
	                localdebitmobimdr: $('#unionpaylocaldebit_mobi_mdr').val(),
	                localcreditmobimdr: $('#unionpaylocalcredit_mobi_mdr').val(),
	                foriegndebitmobimdr: $('#unionpayforeigndebit_mobi_mdr').val(),
	                foriegncreditmobimdr: $('#unionpayforeigncredit_mobi_mdr').val()
	            },
	            settletype: $('#settle_period_card').val()
	        };

	        formData.ewallet = {
	            boost: {
	                merchantmdr: $('#boost_merchant_mdr').val() || 0.00,
	                hostmdr: $('#boost_host_mdr').val() || 0.00,
	                mobimdr: $('#boost_mobi_mdr').val() || 0.00,
	                minimummdr: $('#boost_min_value').val() || 0.00,
	                settletype: $('#settle_period_boost').val()
	            },
	            grab: {
	                merchantmdr: $('#grab_merchant_mdr').val() || 0.00,
	                hostmdr: $('#grab_host_mdr').val() || 0.00,
	                mobimdr: $('#grab_mobi_mdr').val() || 0.00,
	                minimummdr: $('#grab_min_value').val() || 0.00,
	                settletype: $('#settle_period_grabpay').val()
	            },
	            tng: {
	                merchantmdr: $('#tng_merchant_mdr').val() || 0.00,
	                hostmdr: $('#tng_host_mdr').val() || 0.00,
	                mobimdr: $('#tng_mobi_mdr').val() || 0.00,
	                minimummdr: $('#tng_min_value').val() || 0.00,
	                settletype: $('#settle_period_tng').val()
	            },
	            spp: {
	                merchantmdr: $('#spp_merchant_mdr').val() || 0.00,
	                hostmdr: $('#spp_host_mdr').val() || 0.00,
	                mobimdr: $('#spp_mobi_mdr').val() || 0.00,
	                minimummdr: $('#spp_min_value').val() || 0.00,
	                settletype: $('#settle_period_spp').val()
	            }
	        };
	        
	        formData.duitnowqr = {
	        		 merchantmdr: $('#dnqr_merchant_mdr').val(),
		             hostmdr: $('#dnqr_host_mdr').val(),
		             mobimdr: $('#dnqr_mobi_mdr').val(),
		             minimummdr: $('#dnqr_min_value').val(),
		             settletype: $('#settle_period_dnqr').val()
		     };

	        formData.payout = {
	            merchantmdr: $('#payout_merchant_mdr').val(),
	            hostmdr: $('#payout_host_mdr').val(),
	            mobimdr: $('#payout_mobi_mdr').val(),
	            minimummdr: $('#payout_min_value').val(),
	        };

	        formData.mid = {
	            mid: $('#midToUpdateMDR').val()
	        };

	        $('#updateMdrDetails').val(JSON.stringify(formData));
	        $('#hiddenForm').submit();
	    }

	    
	    function submitMainMerchantMdrDetails(){
	    	document.getElementById("confirm_overlay").style.display = "none";
	    	$("#overlay").show();
	        collectAndSubmitFormData();
	        
	    }
									  
	
	    
	    </script>
	    
	    
</body>

</html>