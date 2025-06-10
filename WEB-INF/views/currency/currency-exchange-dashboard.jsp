<%@page import="com.mobiversa.payment.controller.TransactionController" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags" %>

<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta
            content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
            name="viewport">
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
            rel="stylesheet">
        <!-- Script tag for Datepicker -->

        <script
                src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script
                src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <meta name="_csrf" content="${_csrf.token}">
    <meta name="_csrf_header" content="${_csrf.headerName}">

</head>

<style>


    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

    .container-fluid {
        font-family: "Poppins", sans-serif !important;
        gap:14px !important;
    }


  .border-input{
    border: 1px solid red;
    border-radius: 8px;
    margin-top: 0px;
    margin-bottom: 0px;
    display: flex;
    align-items: flex-end;
  }

.swap-order {
    flex-direction: row-reverse !important;
}

    .height72{
        height: 72px;
    }

    .input-field.innerlabel {
        position: relative !important;
      transform: translateY(-0px) scale(0.8);
      transform-origin: 0 0;

    }

     .result {
                        display: none;
                        opacity: 0;
                        transition: opacity 0.3s ease, height 0.3s ease;
                    }
                    .result.show {
                        display: block;
                        opacity: 1;
                        height: auto;
                    }



                </style>
                <style>

                    .export_div .select-wrapper {
                        width: 65%;
                        float: left;
                    }

                    .datepicker {
                        width: 90% !important;
                        text-indent: 0.2cm;
                        font-size: 15px;
                        color: #707070;
                    }


                    .export-blue-btn {
                        background-color: #005baa;
                        border-radius: 100% !important;
                        color: #fff;
                        width: 108px !important;
                        height: 47px !important;
                        font-weight: bold;
                    }


                .text-white strong {
                    font-family: "Poppins", sans-serif !important;
                    font-weight: 600 !important;
                }

.border-style-parent{
    display: flex
;
    flex-direction: column;
    justify-content: flex-end;

    height: 80px;
    }


    #overlay_text {
        position: absolute;
        top: 50%;
        left: 50%;
        font-size: 50px;
        color: #FFF;
        transform: translate(-50%, -50%);
    }

    #overlay_text .img-fluid {
        max-width: 100%;
        margin:0px !important;
    }

    #overlay_text img {
        height: 150px;
    }

    #overlay {
        position: fixed;
        display: none;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(0, 0, 0, 0.5);
        z-index: 2;
        cursor: pointer;
    }

.top-style{
top: 23px;
}

.cur-swap{
margin-left: 2px !important;
            width: 50px !important;
            height: 80px;
            display: flex;
            justify-content: center;
            margin-top: 10px;
            flex-wrap: wrap;
            align-content: stretch;
}

.select-outer-bor{
 border: 1px solid #ccc;
    border-radius: 8px;
    display: flex;
    align-items: center;
    height: 91.6px;
    justify-content: center;
    width: fit-content;
}

.select-from-to{
    width: 40% !important;
    margin-left: 1% !important;
}

 .amount_input_line input[type=text]:not(.browser-default){
    margin: 0 0 12px 0;
 }

 .input-field > label:not(.label-icon).active {
      transform: none !important;
     transform-origin: 0 0;
 }

 .datepicker-table {
     color: #707070;
 }

    li > span{
        display: flex !important;
        align-items: center;
        padding: 4px 6px !important;
    }

    .select-dropdown li img {
        float : none !important;
        margin: 2px 8px !important;
    }

.custom-dropdown {
  position: relative;
  user-select: none;
}

.custom-selected {
  background-color: #fff;
  border: 1px solid #ccc;
  padding: 8px;
  cursor: pointer;
  display: flex;
  align-items: center;
  gap: 8px;
  border-bottom: 1px solid #ffa500 !important;
  border: 0;
  margin-bottom:10px
}

.custom-options {
  position: absolute;
  top: 100%;
  left: 0;
  right: 0;
  background-color: #fff;
  border: 1px solid #ccc;
  max-height: 200px;
  overflow-y: auto;
  display: none;
  z-index: 99;
  color: #707070;
}

.custom-options.show {
  display: block;
}

.custom-options li {
  padding: 8px;
  cursor: pointer;
  display: flex;
  align-items: center;
  gap: 8px;
}

.custom-options li:hover {
  background-color: #f0f0f0;
}
    .select-wrapper .caret {
        display: none !important;
    }

   #selectWrapper .select-wrapper input.select-dropdown {
        display: none !important;
    }

input::placeholder {
  color: #999;
  opacity: 1;
  font-size: 14px;
}

  .modal-overlay-p {
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.5);
            display: none;
            z-index: 999;
        }

        .modal-p {
            overflow: hidden;
            z-index: 1000;
            background: white;
            width: 80%;
            max-width: 500px;
            min-width: 300px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            font-family: "Poppins", sans-serif;
            position: fixed;
            display: none;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        .modal-header-p {
            font-size: 16px;
            font-weight: 500;
            color: #005baa;
            margin: 13px 0;
        }

        .modal-divider-p {
            width: 100%;
            height: 1px;
            background-color: #f0ad4e;
            margin: 5px 0;
        }

        .modal-content-p {
            font-size: 14px;
            color: #656565;
            margin: 5px 0;
        }

        .modal-footer-p {
            display: flex;
            justify-content: center;
            gap: 10px;
            padding: 15px 0;
            background: #EFF8FF;
        }

        .btn-close-p {
            background: #0056b3;
            color: white;
            padding: 10px 20px;
            border-radius: 25px;
            border: none;
            cursor: pointer;
            font-size: 14px;
            font-weight: 500;
            width: 120px;
            text-align: center;
        }

        .btn-close-p:hover {
            opacity: 0.8;
        }

        .btn-close-p:active, .btn-close-p:focus {
            text-transform: none;
        }


</style>
<script type="text/javascript">
    history.pushState(null, null, "");
    window.addEventListener('popstate', function () {
        history.pushState(null, null, "");

    });
</script>
<script type="text/javascript">
    jQuery(document).ready(function () {


    });
</script>



<body class="">
    <div id="overlay">
        <div id="overlay_text">
            <img class="img-fluid" src="${pageContext.request.contextPath}/resourcesNew1/assets/loader.gif">
        </div>
    </div>

    <div class="container-fluid">
        <!-- Header -->
        <div class="row">
            <div class="col s12">
                <div class="card blue-bg text-white">
                    <div class="card-content" style="padding-bottom: 13px !important;">
                        <div class="d-flex align-items-center">
                            <h3 class="text-white" style="font-family: Poppins, sans-serif !important;">
                                <strong>Currency Exchange Rate</strong>
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Currency Input & Selector Section -->
        <div class="row">
            <div class="col s12">
                <div class="card border-radius">
                    <div class="row">
                        <div class="col s12">
                            <div class="blue-bg text-white">
                                <div class="card-content" style="padding-bottom: 2px !important;">
                                    <div class="row" style="width:100%;">

                                        <!-- Amount input -->
                                        <div class="input-field col s12 m4 l3 amount_input_line border-style-parent"
                                             style="margin-left: 10px; border: 1px solid #ccc; border-radius: 8px; height: 91.6px; margin-right: 1%;">
                                            <input type="text" style="text-indent: 0.2cm; font-family: 'Poppins';"
                                                   id="amount"
                                                   placeholder="Enter Amount"
                                                   oninput="formatAmount(this)" />
                                            <label for="amount" style="font-size: 17px !important; color: #858585; top: 10px !important;">Amount</label>
                                        </div>

                                        <!-- Currency Select + Convert Button -->
                                        <div class="input-field col s12 m9 l6 ">
                                        <div style="display: flex; align-items: center; gap: 10px; flex-wrap: wrap;">
                                            <div id="selectWrapper"
                                                 class="select-outer-bor"
                                                 style="display: flex; align-items: center; justify-content: space-between; border: 1px solid #ccc; border-radius: 8px;width:100%;">

                                                <!-- From Currency -->
                                                <div class="input-field col s12 m3 l3 border-style-parent select-from-to custom-dropdown-parent">
                                                  <!-- Hidden real select -->
                                                  <select name="baseCurrency" id="baseCurrency" class="hidden-select" style="display:none !important">
                                                    <option value="MYR" selected>MYR</option>
                                                    <option value="USD">USD</option>
                                                    <option value="EUR">EUR</option>
                                                    <option value="SGD">SGD</option>
                                                    <option value="IDR">IDR</option>
                                                  </select>

                                                  <!-- Custom dropdown -->
                                                  <div class="custom-dropdown " id="customBaseCurrency">
                                                    <div id="baseCurrencyDisplay" class="custom-selected" style="display: flex; align-items: center;  cursor: pointer; padding: 6px 10px;width: 100%;">
                                                      <div style="display:flex;color: #707070;">
                                                        <img src="${pageContext.request.contextPath}/resourcesNew1/assets/Rounded MYR.svg" class="img-fluid" style="width:26px; margin-right: 8px;"> MYR
                                                      </div>
                                                      <div style="margin-left: auto;">&#9662;</div> <!-- ▼ -->
                                                    </div>

                                                    <ul class="custom-options">
                                                      <li data-value="MYR"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/Malaysia Flag.svg" class="img-fluid" style="width:20px;"> MYR</li>
                                                      <li data-value="USD"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/USA flag.svg" class="img-fluid" style="width:20px;"> USD</li>
                                                      <li data-value="EUR"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/EURO.svg" class="img-fluid" style="width:20px;"> EUR</li>
                                                      <li data-value="SGD"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/Singapore flag.svg" class="img-fluid" style="width:20px;"> SGD</li>
                                                      <li data-value="IDR"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/Indonesia Flag.svg" class="img-fluid" style="width:20px;"> IDR</li>
                                                    </ul>
                                                  </div>

                                                  <label for="baseCurrency" style="font-size: 17px !important; color: #858585; top: -6px !important;">From</label>
                                                </div>


                                                <!-- Swap -->
                                               <div class="col s12 m3 l3 cur-swap">
                                                   <img id="swapImage"
                                                        class="img-fluid"
                                                        style="cursor: pointer; width: 50px; height: auto;"
                                                        src="${pageContext.request.contextPath}/resourcesNew1/assets/swap-currency-default.svg"
                                                        alt="Swap Currencies">
                                               </div>



                                                <!-- To Currency -->
                                               <div class="input-field col s12 m3 l3 border-style-parent select-from-to custom-dropdown-parent">
                                                 <!-- Hidden real select -->
                                                 <select name="targetCurrency" id="targetCurrency" class="hidden-select" >
                                                   <option value="USD" selected>USD</option>
                                                   <option value="MYR">MYR</option>
                                                   <option value="EUR">EUR</option>
                                                   <option value="SGD">SGD</option>
                                                   <option value="IDR">IDR</option>
                                                 </select>

                                                 <!-- Custom dropdown -->
                                                 <div class="custom-dropdown" id="customTargetCurrency">
                                                   <div id="targetCurrencyDisplay" class="custom-selected" style="display: flex; align-items: center; cursor: pointer; padding: 6px 10px; width: 100%;">
                                                     <div style="display:flex;color: #707070;">
                                                       <img src="${pageContext.request.contextPath}/resourcesNew1/assets/Rounded USD.svg" class="img-fluid" style="width:26px; margin-right: 8px;"> USD
                                                     </div>
                                                     <div style="margin-left: auto;">&#9662;</div> <!-- ▼ -->
                                                   </div>

                                                   <ul class="custom-options">
                                                     <li data-value="USD"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/USA flag.svg" class="img-fluid" style="width:20px;"> USD</li>
                                                     <li data-value="MYR"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/Malaysia Flag.svg" class="img-fluid" style="width:20px;"> MYR</li>
                                                     <li data-value="EUR"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/EURO.svg" class="img-fluid" style="width:20px;"> EUR</li>
                                                     <li data-value="SGD"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/Singapore flag.svg" class="img-fluid" style="width:20px;"> SGD</li>
                                                     <li data-value="IDR"><img src="${pageContext.request.contextPath}/resourcesNew1/assets/Indonesia Flag.svg" class="img-fluid" style="width:20px;"> IDR</li>
                                                   </ul>
                                                 </div>

                                                 <label for="targetCurrency" style="font-size: 17px !important; color: #858585; top: -6px !important;">To</label>
                                               </div>

                                            </div>
                                        </div>




                                        </div>

                                         <div class="input-field col s12 m3 l2 "  style="margin: 2.5rem 0">
                                            <button class="btn btn-primary export-blue-btn"
                                                    type="button"
                                                    style=" padding: 0px 0px !important; font-family: 'Poppins', sans-serif !important; font-size: 15px !important; font-weight: 400 !important; border-radius: 28px !important;"
                                                    onclick="convertCurrencyRate()">Convert
                                            </button>
                                        </div>
                                        <!-- Conversion Result -->
                                         <div class="input-field col s12 m12 l12 ">
                                        <div id="conversionResultContainer" hidden
                                             style="display: none; flex-direction: column; gap: 5px;">
                                            <div id="fromAmountText" style="font-weight: 500;color: #656565;"></div>
                                            <div id="conversionResult" style="font-size: 24px;color: black;"></div>
                                            <div style="display: flex; align-items: center;">
                                                <img id="infoIcon" style="display: none;width:21px;" title="Exchange rate last updated time" style="width:2px" src="${pageContext.request.contextPath}/resourcesNew1/assets/info_grey.svg" alt="i" />
                                                <span id="lastUpdated" style="color: #9e9898; margin-left: 5px;"></span>
                                            </div>
                                        </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Date Picker and Export -->
        <div class="row">
            <div class="col s12">
                <div class="card border-radius">
                    <div class="row">
                        <div class="col s12">
                            <div class="blue-bg ">
                                <div class="card-content" style="padding-bottom: 2px !important;">
                                    <div class="row" style="">

                                        <!-- From Date -->
                                        <div class="input-field col s12 m3 l3 businessname">
                                            <label for="from" style="top:-29px !important;font-size: 17px !important;" id="label_businessname">From</label>
                                            <div class="select-wrapper">
                                                <input type="text" id="from" placeholder="Choose" name="fromDate" class="validate datepicker" style="box-shadow: none;"
                                                       onchange="loadDate(document.getElementById('from'), document.getElementById('date11'))">
                                                <i class="material-icons prefix">date_range</i>
                                            </div>
                                        </div>

                                        <!-- To Date -->
                                        <div class="input-field col s12 m3 l3 businessname">
                                            <label for="to" style="top:-29px !important;font-size: 17px !important;" id="label_businessname">To</label>
                                            <div class="select-wrapper">
                                                <input type="text" id="to" placeholder="Choose" name="toDate" class="datepicker" style="box-shadow: none;"
                                                       onchange="loadDate(document.getElementById('to'), document.getElementById('date12'))">
                                                <i class="material-icons prefix">date_range</i>
                                            </div>
                                        </div>

                                        <!-- Export Form -->
                                        <form method="POST" id="currencyExportForm" action="${pageContext.request.contextPath}/currency-exchange/export">
                                            <input type="hidden" name="_csrf" value="${_csrf.token}" />
                                            <input type="hidden" name="fromm" id="fromm" />
                                            <input type="hidden" name="too" id="too" />
                                            <input type="hidden" name="exportType" id="exportType" />
                                        </form>

                                        <!-- Download Button -->
                                        <div class="input-field col s12 m3 l3 exp">
                                            <button class="btn btn-primary export-blue-btn"
                                                    type="button"
                                                    style="padding: 0px 0px !important; font-family: 'Poppins', sans-serif !important; font-size: 15px !important; font-weight: 400 !important; border-radius: 28px !important;"
                                                    onclick="downloadCurrencyExRateInDateRange()">Download
                                            </button>
                                        </div>

                                        <!-- Alert If Data Exists -->
                                        <c:if test="${data != null}">
                                            <c:if test="${data != null}">
                                                <div class="modal-overlay-p" id="modalOverlay"></div>
                                                <div class="modal-p" id="notificationModal">
                                                    <div class="modal-header-p">Notification</div>
                                                    <div class="modal-divider-p"></div>
                                                    <div class="modal-content-p" id="successMessage">
                                                        <span>${data}</span>
                                                    </div>
                                                    <div class="modal-footer-p">
                                                        <button class="btn-close-p" onclick="closeModal()">Close</button>
                                                    </div>
                                                </div>

                                                <script>
                                                    document.getElementById("modalOverlay").style.display = "block";
                                                    document.getElementById("notificationModal").style.display = "block";
                                                </script>
                                            </c:if>

                                        </c:if>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- Scripts -->
<script>
    <!-- pop up  -->
    function closeModal() {
        document.getElementById("modalOverlay").style.display = "none";
        document.getElementById("notificationModal").style.display = "none";
    }


<!-- required drop down -->
document.addEventListener("DOMContentLoaded", function () {
  // Map of currency codes to their rounded icon paths
  const roundedIconMap = {
    MYR: "${pageContext.request.contextPath}/resourcesNew1/assets/Rounded MYR.svg",
    USD: "${pageContext.request.contextPath}/resourcesNew1/assets/Rounded USD.svg",
    EUR: "${pageContext.request.contextPath}/resourcesNew1/assets/Rounded Euro.svg",
    SGD: "${pageContext.request.contextPath}/resourcesNew1/assets/Rounded Sigpore.svg",
    IDR: "${pageContext.request.contextPath}/resourcesNew1/assets/Rounded Indo.svg"
  };

  // Map of currency codes to their flag paths
  const flagMap = {
    MYR: "${pageContext.request.contextPath}/resourcesNew1/assets/Malaysia Flag.svg",
    USD: "${pageContext.request.contextPath}/resourcesNew1/assets/USA flag.svg",
    EUR: "${pageContext.request.contextPath}/resourcesNew1/assets/EURO.svg",
    SGD: "${pageContext.request.contextPath}/resourcesNew1/assets/Singapore flag.svg",
    IDR: "${pageContext.request.contextPath}/resourcesNew1/assets/Indonesia Flag.svg"
  };

  function setupCustomDropdown(dropdownId, selectId) {
    const dropdown = document.getElementById(dropdownId);
    const select = document.getElementById(selectId);
    const selected = dropdown.querySelector(".custom-selected");
    const optionsContainer = dropdown.querySelector(".custom-options");

    // Toggle dropdown visibility
    selected.addEventListener("click", () => {
      optionsContainer.classList.toggle("show");
    });

    // Handle option click
    optionsContainer.querySelectorAll("li").forEach((option) => {
      option.addEventListener("click", () => {
        const value = option.getAttribute("data-value");

        // Create the HTML for the selected display with proper icon
        const displayHTML = getCurrencyDisplayHTML(value);

        // Update display
        selected.innerHTML = displayHTML;
        optionsContainer.classList.remove("show");

        // Update hidden select
        select.value = value;
        select.dispatchEvent(new Event("change"));
      });
    });

    // Close dropdown on outside click
    window.addEventListener("click", (e) => {
      if (!dropdown.contains(e.target)) {
        optionsContainer.classList.remove("show");
      }
    });
  }

  // Function to generate the display HTML with rounded icons
  function getCurrencyDisplayHTML(currencyCode) {
    // Get the path to the rounded icon, fallback to a default if not found
    const iconPath = roundedIconMap[currencyCode] || roundedIconMap["MYR"];

    return '<div style="display:flex;align-items: center;">' +
           '<img src="' + iconPath + '" class="img-fluid" style="width:26px; margin-right: 8px;"> ' +
           '<span style="color: #707070;">'+currencyCode+'</span>' +
           '</div>' +
           '<div style="margin-left: auto;">&#9662;</div>';
  }

  // Initialize dropdowns
  setupCustomDropdown("customBaseCurrency", "baseCurrency");
  setupCustomDropdown("customTargetCurrency", "targetCurrency");

  // Setup currency swap functionality
  const swapButton = document.getElementById("swapImage");
  if (swapButton) {
    swapButton.addEventListener("click", function() {
      // Get current values
      const baseSelect = document.getElementById("baseCurrency");
      const targetSelect = document.getElementById("targetCurrency");
      const baseValue = baseSelect.value;
      const targetValue = targetSelect.value;

      // Swap values
      baseSelect.value = targetValue;
      targetSelect.value = baseValue;

      // Update displays
      document.getElementById("baseCurrencyDisplay").innerHTML = getCurrencyDisplayHTML(targetValue);
      document.getElementById("targetCurrencyDisplay").innerHTML = getCurrencyDisplayHTML(baseValue);

      // Trigger change events
      baseSelect.dispatchEvent(new Event("change"));
      targetSelect.dispatchEvent(new Event("change"));
    });
  }
});



<!-- Amount format function -->
function formatAmount(input) {
    let value = input.value
        .replace(/[^0-9.]/g, '')       // remove non-numeric and non-dot
        .replace(/(\..*)\./g, '$1');    // only one dot allowed

    if (value.includes('.')) {
        // Limit total length to 15 when decimal exists
        value = value.substring(0, 15);
    } else {
        // Limit total length to 12 when no decimal
        value = value.substring(0, 12);
    }

    input.value = value;
}

<!-- swap function -->




<!-- swap button hover function -->
document.addEventListener("DOMContentLoaded", function() {
    const swapImage = document.getElementById("swapImage");
    const defaultSrc = "${pageContext.request.contextPath}/resourcesNew1/assets/swap-currency-default.svg";
    const hoverSrc = "${pageContext.request.contextPath}/resourcesNew1/assets/swap-currency.svg";

    swapImage.addEventListener("mouseover", function() {
        swapImage.src = hoverSrc;
    });

    swapImage.addEventListener("mouseout", function() {
        swapImage.src = defaultSrc;
    });
});

  jQuery(function() {
        var date = new Date();
        var currentMonth = date.getMonth();
        var currentDate = date.getDate();
        var currentYear = date.getFullYear();

        $('.datepicker').datepicker({
            minDate: new Date(currentYear, currentMonth-1, currentDate),
            maxDate: new Date(currentYear, currentMonth, currentDate)
        });
    });



  // Existing loadDate function
  function loadDate(inputtxt, outputtxt) {
    const field = inputtxt.value.trim();
    const regex = /^(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s(\d{2}),\s(\d{4})$/;

    const monthMap = {
      Jan: '01', Feb: '02', Mar: '03', Apr: '04',
      May: '05', Jun: '06', Jul: '07', Aug: '08',
      Sep: '09', Oct: '10', Nov: '11', Dec: '12'
    };

    const match = field.match(regex);
    if (!match) {
      alert("Please enter a valid date format (e.g., Apr 06, 2025)");
      inputtxt.value = '';
      outputtxt.value = '';
      return;
    }

    const [_, monthStr, day, year] = match;
    const month = monthMap[monthStr];
    const formattedDate = `${year}-${month}-${day}`;
    outputtxt.value = formattedDate;
  }



    function downloadCurrencyExRateInDateRange() {
        const from = document.getElementById("from").value;
        const to = document.getElementById("to").value;
        const exportTypeValue = "CSV";

        if (!from || !to) {
            alert("Please select both dates.");
            return;
        }

        // Set values to hidden form inputs
        document.getElementById("fromm").value = from;
        document.getElementById("too").value = to;
        document.getElementById("exportType").value = exportTypeValue;

        // Submit the form
        document.getElementById("currencyExportForm").submit();
    }


function showSpinner() {
    document.getElementById("overlay").style.display = "block";
}
function hideSpinner() {
    document.getElementById("overlay").style.display = "none";
}

function formatDate(date) {
    return `Last updated (${date.toLocaleString('en-US', {
        month: 'short',
        day: '2-digit',
        year: 'numeric',
        hour: '2-digit',
        minute: '2-digit',
        hour12: false
    })})`;
}

async function convertCurrencyRate() {
const amount = document.getElementById("amount").value.trim();
const from = document.getElementById("baseCurrency").value;
const to = document.getElementById("targetCurrency").value;
const csrfToken = document.querySelector('meta[name="_csrf"]').getAttribute('content');
const csrfHeader = document.querySelector('meta[name="_csrf_header"]').getAttribute('content');

const container = document.getElementById("conversionResultContainer");
const fromAmountText = document.getElementById("fromAmountText");
const resultTextElem = document.getElementById("conversionResult");
const lastUpdated = document.getElementById("lastUpdated");
const infoIcon = document.getElementById("infoIcon");

// Reset all result fields
container.style.display = "none";
fromAmountText.textContent = "";
resultTextElem.textContent = "";
lastUpdated.textContent = "";
infoIcon.style.display = "none";

if (!amount || isNaN(amount)) {
    alert("Please enter a valid amount.");
    return;
}

let displayAmount = parseFloat(amount);
if (isNaN(displayAmount)) {
    displayAmount = '0.00';
} else if (!amount.includes('.')) {
    displayAmount = amount + '.00';
} else {
    displayAmount = amount;
}

if (from === to) {
       alert("Please select different countries for currency conversion.");
     fromAmountText.textContent = from + ' ' + displayAmount + ' =';
    resultTextElem.textContent = resultText +' '+ to;

    const now = new Date();
    if (now.getHours() >= 8) {
     now.setHours(8, 10, 0, 0); // Set time to 08:00:00

            const formatted = now.toLocaleString('en-US', {
                month: 'short',     // Mar
                day: '2-digit',     // 02
                year: 'numeric',    // 2025
                hour: '2-digit',    // 08
                minute: '2-digit',  // 00
                hour12: false       // 24-hour format
            });
        lastUpdated.textContent = 'Last updated ' + formatted ;
        infoIcon.style.display = "inline";
    }

    container.style.display = "flex";
}

const requestBody = {
        amount: amount,
        baseCurrency: from,
        targetCurrency: to,
        exportType: null
    };

    try {
        const response = await fetch(`${pageContext.request.contextPath}/currency-exchange/convert`, {
            method: "POST",
            headers: {
                'Content-Type': 'application/json',
                [csrfHeader]: csrfToken
            },
            body: JSON.stringify(requestBody)
        });

        const contentType = response.headers.get("content-type");

        if (!contentType) {
            alert("No response headers found.");
            return;
        }

        if (contentType.includes("text/html")) {
            window.location.href = `${pageContext.request.contextPath}/auth/login`;
            return;
        }

        // Process based on status code
        const statusCode = response.status;

        if (statusCode === 400) {
            alert("Invalid request body");
            return;
        }

        if (statusCode === 404) {
            alert("Exchange rate data not found.Try after some time.");
            return;
        }

        if (statusCode === 500) {
            alert("Internal server error, try again later");
            return;
        }

        if (contentType.includes("application/json")) {
            const json = await response.json();
            const { calculatedValue, status, message } = json;

            if (statusCode === 200) {
                if (status === "CUR_EX_RATE_CALCULATED" && !isNaN(calculatedValue)) {
                    fromAmountText.textContent = from + ' ' + displayAmount + ' =';
                    resultTextElem.textContent = calculatedValue + ' ' + to;

                    const now = new Date();
                    if (now.getHours() >= 8) {
                        now.setHours(8, 10, 0, 0);
                        const formatted = now.toLocaleString('en-US', {
                            month: 'short',
                            day: '2-digit',
                            year: 'numeric',
                            hour: '2-digit',
                            minute: '2-digit',
                            hour12: false
                        });
                        lastUpdated.textContent = 'Last updated ' + formatted;
                        infoIcon.style.display = "inline";
                    }

                    container.style.display = "flex";
                } else {
                    alert(message || "Unexpected response.");
                }
            } else if (statusCode === 202) {
                // Show status message in info icon
                fromAmountText.textContent = from + ' ' + displayAmount + ' =';
                resultTextElem.textContent = "-";
                lastUpdated.textContent = message || "Data will be populated by 8.10AM";
                infoIcon.style.display = "inline";
                container.style.display = "flex";
            }
        } else {
            alert("Unexpected response format.");
        }

    } catch (error) {
        alert("Error: " + error.message);
        container.style.display = "none";
    }

}

function formatDate(dateObj) {
    const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
                    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    const day = String(dateObj.getDate()).padStart(2, '0');
    const month = months[dateObj.getMonth()];
    const year = dateObj.getFullYear();
    const hour = String(dateObj.getHours()).padStart(2, '0');
    const minute = String(dateObj.getMinutes()).padStart(2, '0');
    return `${month} ${day}, ${year}, ${hour}:${minute}`;
}


</script>


</body>

</html>

