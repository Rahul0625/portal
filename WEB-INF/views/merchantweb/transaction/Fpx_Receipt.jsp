<%@page
	import="com.mobiversa.payment.controller.MerchantWebTransactionController"%>
<%@page import="com.mobiversa.common.bo.Merchant"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBvMCKdhSLSy_4FKtIZFZbHr2spqdxzNiQ&callback=initMap">
	
</script>

<link rel="icon" type="image/gif" sizes="16x16"
	href="${pageContext.request.contextPath}/resourcesNew/img/newMobiMIcon.svg" />
<title>Mobiversa Receipt</title>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="IE=edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<script src="/resourcesNew/js/jQuery-2.1.4.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resourcesNew/assets/js/jquery-1.11.3.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resourcesNew/js/urlHide.js"></script>

<!-- <script type="text/javascript">
	history.pushState(null, null, "");
	window.addEventListener('popstate', function() {
		history.pushState(null, null, "");

	});
</script> -->
<link href="/resourcesNew/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="/resourcesNew/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
<style>
@media only screen and (max-width: 690px) { "
	.container {
		width: 100% !important;
	}
	"
}

"
.flexibleImage { "
	max-width: 100px !important;
	"
	width
	100%
	!important;
	"
}
"
</style>


<script lang="JavaScript">
	function displaySign() {
		var sign = document.getElementById("sign").value;
		//alert("Data :"+sign);
		document.getElementById("nsign").style.display = 'none';
		document.getElementById("tsign").style.display = 'none';
		//alert("Data :"+sign);
		if (sign == null || sign == '') {
			//alert("if :"+sign);
			document.getElementById("nsign").style.display = '';
		} else {
			//alert("else :"+sign);
			document.getElementById("tsign").style.display = '';

		}
	}
</script>
</head>
<body style="font-family: Helvetica; color: #666;">
	<center>
		<table class="container" width="380" border="0"
			style="border-radius: 10px; background-color: #005baa;">

			<tr>
				<td>
					<table style="width: 100%;">
						<tr>


							<c:if test="${dto.txnType == 'FPX REFUNDED'}">
								<td style="color: #FF0000; padding-left: 10px; font-size: 18px;">${dto.txnType}</td>
							</c:if>
							<c:if test="${dto.txnType == 'FPX SALE'}">
								<td style="color: #42cc15; padding-left: 10px; font-size: 18px;">${dto.txnType}</td>
							</c:if>



							<td align="right"><img style="height: 45px !important"
								; src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF8AAAAtCAYAAADIprc/AAAAAXNSR0IArs4c6QAABAxJREFUeAHtWb1uE0EQthG0YAoKKq6DVPEbcJFoqGKegEtDTUkX8wbJE9h5AkiFqHx+glyUBtHkQo9wKhASMt9nbtHdePZ8P4niJDPS6Ha++WZ297u79SnpdMxMAVPAFDAFTAFTwBQwBUwBU8AUMAVMgZugQPcmbKLqHubzeQzuPM/vdrtb+bjuGD0foeYl/CH8M/p9qdvjVvAh1JK12TiavYD/FE3ftel5Y2uFSIuwzWbR4ETp+RvY/Sp971QhGcerwIaSuQfsmYIvQSb+kiS1gERh/wH2VcFvN6QcEYUf37rqoN8G/Fuu7y+MB1X73LavnSWx8XXSSgOIza+czUzwFO1SE19RgE+ohNuKL/vVie9WJWPdAbhPBP/M3Wnko1x+hvEBcrwWDDy+lu5JYe4QvKRAKglQ30N6Gx7kaCnGU/ThtZFl+3uO4iBrwLVzbWkWL11Q8xjgU5H4jpoTgbULMdEQLo1YH34qE4h/wCM3K8Yh/BSu2QQgRfUa8gF8BC+zCZKhr4mnsAd85MkRnsD7Wk/gb+DSPmncVhhm8Ik/k7OLOEI8EJgWHvkWmNXzZla1Xa2Xp/jIg0s4kj1BuFLxT+UKlZiiVRVuqGyQb1YT08Rq0idfU3gDkGglftvv/ECKpcQ8TkqPlFzN69y4g82x7kMeqzEeob4gVo1aH7XpWtR+bcVn03P4+8ynBErsEDly9+Gsk8ZzPciBEcb52KWOMXgF38rcN+8Q+ap2AKLrue8p4voGntzlwZh0CJfG8z7Iz4o4lqQs3hO80MMLHQ/5ROEkLp+/gvdR4RLqOZ4nTzh0HHcF5jvuxjnOlR47ifIpNnSLE9eC+KiLkT8THIb/xcJ4U8kPFYxQ5MH7HtzB+9laXLy4Aksw0N6AoEBsEbQ9duKqcys3iaWpUr8QC09eoOQIxRqO/jPg51puBUaRfRYrCe2BUGirobbir56hIcNzs9gtKGn5oCTnS/V8CeBarskNVqdYW/HV1f4DQy2nndsZj29EmW2XJCMllypYI2jdxT9UdrUrhc6OqJHCPcMbVHassIQ//CN44SlHvIcc/9wgbVU/yffGlf+24+1wuQkKIJ9MijSBODGu9D48hBOXNpaAJ46A8yYkWZ49g2wsL2MJNI3XWnw8tfxsnWJz2hMYAqf7jF9Se76kggfA6GV2UOFNKqsv5Nb92OFiB/DjwqpXB/xRHECo2WpqZQbX8LYyuwJx7cXPBAyxF+3817ZIkfo1ntAdrYnA2DO84JvZWXvxKQI3DecbsAXnTTiHS5sC2AGPwqcy6YvBHSPn+koaRXc9L/ItWszTlbNdlxi/BQHWSq/1rzvwSw19QxJwU2JezUwBU8AUMAVMAVPAFDAFTAFTwBQwBa6JAn8BgcK/gljfEOkAAAAASUVORK5CYII=">

							</td>


						</tr>
					</table>
				</td>

			</tr>

			<tr>
				<td>

					<table style="width: 100%;">
						<tr>
							<td
								style="color: #FFF; padding-left: 10px; font-size: 18px; font-weight: bold;">RM
								${dto.total}</td>
							<td style="color: #FFF; text-align: right; font-size: 11px;">${dto.date}
								, ${dto.time}</td>
						</tr>
					</table>

				</td>
			</tr>

			<tr>
				<td>

					<table align="center" width=" 380" border="0"
						style="border-bottom-left-radius: 15px; border-bottom-right-radius: 15px; background: #EDFBFF; border: 2px solid #005baa; border-style: solid; padding: 10px;">

						<tr>
							<td
								style="padding-left: 5px; font-size: 12px; font-family: Helvetica;">
								<b style="color: #3e4152;">Hi </b><BR />

							</td>
						</tr>

						<tr>
							<td
								style="padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #909090;">

								You authorised a payment of RM ${dto.total} to
								${dto.merchantName}</td>
						</tr>

						<tr>
							<td
								style="padding-left: 5px; padding-right: 5px; font-weight: 500; font-size: 12px; font-family: Helvetica; color: #9b9b9b;">

								<p></p>
							</td>
						</tr>

						<tr>
							<td
								style="padding-left: 5px; padding-right: 5px; font-weight: 500; font-size: 13px; font-family: Helvetica; color: #9b9b9b;">

								PAID TO</td>
						</tr>
						<tr>
							<td
								style="padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #d9d9d9; border-top: 1px;">

							</td>
						</tr>

						<tr>
							<td
								style="padding-left: 5px; padding-right: 5px; font-weight: 500; font-size: 12px; font-weight: bold; font-family: Helvetica; color: #484b5c;">

								${dto.merchantName}</td>
						</tr>

						<tr>
							<td
								style="padding-left: 5px; padding-right: 5px; font-weight: 500; font-size: 12px; font-weight: bold; font-family: Helvetica; color: #9b9b9b;">

								${dto.merchantAddr1} - ${dto.merchantPostCode}</td>
						</tr>




						<tr>
							<td
								style="padding-left: 5px; padding-right: 5px; font-weight: 500; font-size: 12px; font-weight: bold; font-family: Helvetica; color: #9b9b9b;">

								${dto.merchantCity},</td>
						</tr>



						<tr>
							<td
								style="padding-left: 5px; padding-right: 5px; font-weight: 500; font-size: 12px; font-weight: bold; font-family: Helvetica; color: #9b9b9b;">

								${dto.merchantState},</td>
						</tr>




						<tr>
							<td
								style="padding-left: 5px; padding-right: 5px; font-weight: 500; font-size: 12px; font-weight: bold; font-family: Helvetica; color: #9b9b9b;">

								${dto.merchantContNo}</td>
						</tr>



						<tr>
							<td>

								<table style="width: 100%;">
									<tr>
										<td
											style="width: 50%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											MID</td>
										<td
											style="width: 5%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											:</td>
										<td
											style="width: 45%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											${dto.mid}</td>
									</tr>
								</table>
							</td>

						</tr>


						<tr>
							<td>

								<table style="width: 100%;">
									<tr>
										<td
											style="width: 50%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											TID</td>
										<td
											style="width: 5%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											:</td>
										<td
											style="width: 45%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											${dto.tid}</td>
									</tr>
								</table>
							</td>

						</tr>

						<tr>
							<td
								style="padding-left: 5px; padding-right: 5px; font-weight: 500; font-size: 12px; font-family: Helvetica; color: #9b9b9b;">

								<p></p>
							</td>
						</tr>


						<!-- TRANSACTION DETAILS -->
						<tr>
							<td
								style="padding-left: 5px; padding-right: 5px; font-weight: 500; font-size: 13px; font-family: Helvetica; color: #9b9b9b;">

								TRANSACTION DETAILS</td>
						</tr>

						<tr>
							<td>

								<table style="width: 100%">
									<tr>
										<td
											style="width: 50%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											Bank Name</td>
										<td
											style="width: 5%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											:</td>
										<td
											style="width: 45%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											${dto.bankName}</td>
									</tr>
								</table>
							</td>

						</tr>


						<tr>
							<td>

								<table style="width: 100%;">
									<tr>
										<td
											style="width: 50%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											FPX Transaction ID</td>
										<td
											style="width: 5%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											:</td>
										<td
											style="width: 45%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											${dto.fpxTxnId}</td>
									</tr>
								</table>
							</td>

						</tr>




						<tr>
							<td>

								<table style="width: 100%;">
									<tr>
										<td
											style="width: 50%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											Reference</td>
										<td
											style="width: 5%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											:</td>
										<td
											style="width: 45%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											${dto.refNo}</td>
									</tr>
								</table>
							</td>

						</tr>



						<tr>
							<td>



								<table style="width: 100%">
									<tr>
										<td
											style="width: 50%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											Payment Method</td>
										<td
											style="width: 5%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">

											:</td>
										<td
											style="width: 45%; padding-right: 5px; padding-left: 5px; font-size: 12px; font-family: Helvetica; color: #3e4152;">


											<img style="height: 45px !important"
											; src="data:image/png;base64,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">


										</td>
									</tr>
								</table>
							</td>



						</tr>




						<!-- TRANSACTION DETAILS -->
						<tr>
							<td
								style="padding-left: 5px; padding-right: 5px; font-weight: 500; font-size: 12px; font-family: Helvetica; color: #9b9b9b;">

								<p></p>
							</td>
						</tr>

						<tr>
							<td style="color: #8c8c8c; text-align: center; font-size: 10px;">

								For questions about this email contact: <span
								style="color: #005baa;"">contact@gomobi.io</span>
							</td>

						</tr>

						<tr>
							<td
								style="padding-left: 5px; padding-right: 5px; font-weight: 500; font-size: 12px; font-family: Helvetica; color: #9b9b9b;">

								<p></p>
							</td>
						</tr>

						<tr>
							<td style="color: #005baa; text-align: center; font-size: 10px;">

								Mobi Asia Sdn. Bhd."</td>

						</tr>

<!-- 						<tr> -->
<!-- 							<td style="color: #005baa; text-align: center; font-size: 10px;"> -->

<!-- 								Suite #07-01, Wisma UOA Damansara II, No. 6, Changkat Semantan, -->
<!-- 								"</td> -->

<!-- 						</tr> -->

<!-- 						<tr> -->
<!-- 							<td style="color: #005baa; text-align: center; font-size: 10px;"> -->

<!-- 								Damansara Heights, 50490 Kuala Lumpur."</td> -->

<!-- 						</tr> -->


<!-- 						<tr> -->
<!-- 							<td> -->
<!-- 								<table align="center"> -->
<!-- 									<tr> -->
<!-- 										<td><a href='https://www.instagram.com/mobi_asia'> <img -->
<!-- 												style="width: 25px; padding: 5px;" -->
<!-- 												src="data:image/png;base64,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"> -->
<!-- 										</a></td> -->
<!-- 										<td><a href='https://facebook.com/mobiversa'> <img -->
<!-- 												style="width: 25px; padding: 5px;" -->
<!-- 												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuBAMAAACllzYEAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAwUExURUdwTDpZmDpYmDpYmDpYlzdWmDpYlzpYmDNWmDpYmDpYmDlYlzpYmDpZmDlYlztZmAlJkhIAAAAPdFJOUwCP6ziDFNnBCqdOI2PSc6JlMPUAAAEuSURBVDjLY2CAgij3////lyxlQAUcx/9DQE0DirDTfxjQQ5Yw+o8AyQjhxv/IwAEmzJ2PIv49ACq+6T8qSIUq10cT/wbREPQfHSSAxedjiH8BCXP9xwQGKMZ8E3GRh7AuAMXlkR3OD2H9YWBghQt/ZICLf2Ng4IOLKyDE/y9g4IWLT2DgmV4PZ++HiwsgsRUY3iOJ28PZn5F8hSz+j+E+VvGfDDDWB3CYwGS+o4mfh3kdTdwfyvsEF/+BGrYM+ljt/cSQj1X8L0M9DnfKYxX/yLAeq/gvhnis4j8Y2LGKA8Mcq/gCBg59LOKfkLyOLP4PKN4E45S4zEdOcLjSFa50iDPd4krnGPniKoF8hCvfMTAswp5PGViR8jVKOcD6FlYOoBUQDFHiwOAqWQHjAgDrxeljvr6QpgAAAABJRU5ErkJggg=="></a></td> -->
<!-- 										<td><a href='https://gomobi.io'> <img -->
<!-- 												style="width: 25px; padding: 5px;" -->
<!-- 												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAABpUExURUdwTABaqgBaqgBRrgBbqQBaqgBZqgBbqgBaqgBaqgBaqQBbrABbqgBbqv///1WRxuHr9dTj8RBlr7bQ51COxSd0t8DX6/D2+jh/vAZfrESGwfn7/p/B383f74mz2Hen0medzK3K5Nvo8yFs720AAAANdFJOUwDGiw2fuDfX7FN3I0O1cVhpAAAB80lEQVRIx62W2ZKDIBBFs6iYODaKENkUzf9/5KiogElMUjP3BQpPUdDLxcNhq+QaxShNURxdk8MbXaI095RGlz0Y5Q9Cly/gUcefZ3SUv9TpAT7H+Y7ic0hnKN8VyoK939DDBfz94/ytYkef8g+03jcJlgWRgrRFS4Qkwv+w5Pjow8wUNTMKVMfqu2H+8ef0eEukawA0KQCgYBpU0xH30abLiwppawAlDYwyWAHUrePRSF83NDSsmPCSlRDylyD5ohtp0HKioZZ6GroViAbcVSxv7CE6i6uuncZmvW8aRFFWt0GV7G6TKkztAvdi6VIkOMWDJGHYihE5DpQLlyqXf1xO6nlvJ6VeZtRVggujtke+ybudQEPtZUC7TLmblvZbRR1+s5PSRd7dtJ5xvOAlnvF6Zbzd1YIXW1y5SKLH3YuXuyOvHD84+9GrgSUy9HVkIldhAheTel7ZyX2drXG/ekXwQVYzr8QE76tBPcfVpJ7KecEveHd4bi9rzFKRZlORUdh75nm9C789vMgTrYJuasJuQtvWJnrqVdsWhqrH3guNg5jh/JotTgC+E8zGcfjxzYe3RU1GnzGDz7Q83/rG1vQEw9bFCGXiuclvLVWIPUv9wLBR8CBk6T6dZn95bPZN/vTs6UuOL96Z5D+e4a8f+fe/EL+v0mICGsINWgAAAABJRU5ErkJggg=="></a></td> -->
<!-- 										<td><a href='https://www.linkedin.com/company/4813011'> -->
<!-- 												<img style="width: 25px; padding: 5px;" -->
<!-- 												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC8AAAAvCAMAAABE+WOeAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAABIUExURUdwTAB5uQB5uQB6uQB5ugB5uQB6uQB5uQB6uAB5uwB5uQBlzwB6uf///0CbyoC93L/e7imPxFCjz7DW6ZTH4s/m8ufz+WCs0xOqFSMAAAAMdFJOUwD3V28zz+aLsRudBMZ4Ls0AAAFUSURBVEjHrZbZloMgDIYBWTW4YDt9/zedkYoNlM1z5r9qPV9ICCGBkFSGKS0kSKEVM6QhrgRgCcVrtIZv6YLFZHK0t8iGxSiURNk3PkBFdEhxBXWpe3hiwKAttAdOO3h65dXI85Nb7eqKBjKkNeR9tofmooE+own/H55/lEPi0fInv0DdwbU8bJ7foO4ApX5e131uHYKAfgkcTk5b4s7gOtvWQ3/xv/wP2HwCnthkICMKP+R/eW/8x9o0YyPRRT7g1jqUUVHkP3qiDcsyvzu32/hMJKFFfj++vQ1eV5FW1veLunjHshI/qpHlE7+u8xDzupL/HD/i8+3gB2Ju8QbXZ5sXUf23eRXdrzbPo/vb5HXcH5r82bHGzts4hv5Gu3Aa+tvEunjWOSyuo0Wz62b/b3tI8Kk27vIDj8ty58+OYKPyLqgqPQuyE1ubf3s/vJ0MtffJL7CKUzDXtiolAAAAAElFTkSuQmCC"> -->
<!-- 										</a></td> -->
<!-- 										<td><a href='https://twitter.com/Mobiversa'><img -->
<!-- 												style="width: 25px; padding: 5px;" -->
<!-- 												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC8AAAAvCAMAAABE+WOeAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAABLUExURUdwTFOs9FSs71Ss7VOs71Wr7lSs71Ss7lSr7lWs7lKt8FSs7lSs7lWs7v///1+x73C58Y/J9MPi+qbU93/B8tru/PX6/rXb+Or1/XOCudUAAAANdFJOUwAYcfY05leLsM4l+p25++9ZAAABgUlEQVRIx6VWWbKEIAwERcFRFgGX+5/0OeVCoqA4r7+0bJMQmg6EnEFrLppKVo3gNSUPYLyREA1nd2xMXiFSf3yEbGUM4hOj16VMoayv9EKm0bbFmc7lPfg7+umHWj4DrIGVGfzy6CutZA6qfbeFzIPY9knmgr0KvyVgyc+9HWz/fdAwAWh9D9lmUF8Mxk8WbkLQpFE20PWodozmkDdarVfKHqltoE/2SEyhzha+mv32EsIrkLYgHah4/WjC8wqwrA51c12hGpzXGvBRR+ERBEHHOL8hQDt+cioGqCHSRsNDDPCkwfh7/Sc4FB/W76N8j+pHavPjlT5jxXXwVff2wkei6rCP6PE+/LK/FEv4PvyiH4I9sz9lmLD9Xq1HO5vo/dJ9fj1f2kWFCQ6wgP2ZxsROBYNg7R4Z1z6Ys+1uvt6FWg5FzJO5nP9uHxTADrV3zvXexAyRvrFbZLhFBr34h/8/ZyhejLv4wGPpKVBFRzDl8fHbcpqe2LnT+qf7Q8b95A8MgFqC3uKrqgAAAABJRU5ErkJggg=="></a></td> -->
<!-- 										<td><a -->
<!-- 											href='https://www.youtube.com/channel/UCsCvriJbbS0wpRAYXW-ugmg'><img -->
<!-- 												style="width: 25px; padding: 5px;" -->
<!-- 												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC8AAAAvBAMAAACBCY6fAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAtUExURUdwTOpALOpALOtALOpAK+pAK+tAKuxBLOpAK+pAK+9AKO9AIupALOtAK+pBLLn818oAAAAOdFJOUwDA7kCgMFk+kLEgEYBwEy5X+gAAARpJREFUOMtjYIAC1ity796JXGVABxF678BAIwBV3PAdDDw0QBZf+Q4BXi5AiLPpIUm8U0NI+L1DAQ0wcRZU8XdPcGh4984Bu4Z3715AJPIwJN4lgMS59DAltEASnJji716CJOywSLwDeV8Om4QAMFSxib97CnPso57DxmBwpgnmYCYwQxsePNxgRz5iYIhDOBzZWwEM98D0BoTEPrDABWhAIcUNHzS4wK59CPYpJO4Yoe59B5dggsQqROIBssS7hwU4JN7NxiEhjsMoYQZkCYSrmBlQXIXTHzh9jjOsmBCRjBq6HJD48DlWDgJlZ5xg8YEzBnHGOe5UgjNd4UyJONMu7tSOM3/gzlE48yDuXIszn+MuGXCXJZilDwDegnYx5JeH0wAAAABJRU5ErkJggg=="></a></td> -->

<!-- 									</tr> -->
<!-- 								</table> -->

<!-- 							</td> -->

<!-- 						</tr> -->

					</table>
				</td>

			</tr>

			<!--CUSTOMER CARD DETAILS -->

		</table>

		</td>
		</tr>
		</table>

		</td>
		</tr>

		</table>
	</center>



</body>
</html>
