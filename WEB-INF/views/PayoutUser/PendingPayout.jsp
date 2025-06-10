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
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<style>


    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

    .container-fluid {
        font-family: "Poppins", sans-serif !important;
    }

</style>


<style>
    .center-text {
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
        margin: 20px 0; /* Adjust margin as needed */
        line-height: 1.2px;
        font-size: 16px;
        font-weight: 400;
    }

    .poppins_font {
        font-family: "Poppins", sans-serif !important;
    }

    .page-link {
        font-weight: 500;
        /*font-family: "Poppins", sans-serif !important;*/
    }

    .select2-container--default .select2-selection--single .select2-selection__rendered {
        color: #A7A7A7;
    !important;
    }

    /* Custom CSS for pagination buttons */
    .pagination {
        display: flex;
        justify-content: end;
        align-items: center;
        margin-top: 20px;
        font-family: "Poppins", sans-serif !important;
        font-weight: 500 !important;
    }

    .pagination button,
    .pagination span {
        background-color: #fff;
        color: #005baa;
        border: 0px solid #ddd;
        border-radius: 50%;
        padding: 5px 10px;
        margin: 0px 0px;
        cursor: pointer;
        font-family: "Poppins", sans-serif !important;
    }

    .pagination button.active,
    .pagination span.active {
        background-color: #005baa;
        color: white;
        border: 1px solid #005baa;
        font-weight: 500;
    }

    .pagination .prev {
        background-color: #fff;
        border-radius: 0;
        padding: 5px 10px !important;
        margin: 0px 5px;
        color: #005baa;
    }

    .pagination .next {
        background-color: #fff;
        border-radius: 0;
        /*padding: 5px 10px !important;*/
        padding: 8px 10px 5px 10px !important;
        margin: 0px 5px;
        color: #005baa;
    }


    .next, .prev {
        font-size: 14px !important;
    }


    /*for prev */
    button.prev {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
    }

    button.prev.disabled {
        color: #a9a9a9;
        cursor: not-allowed;
    }


    /*for next */
    button.next {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
    }

    button.next.disabled {
        color: #a9a9a9;
        cursor: not-allowed;
    }

    button.next.disabled .symbol {
        color: #a9a9a9;
    }


    /*.symbol {*/
    /*    font-size: 24px !important;*/
    /*    margin: 0px 0px !important;*/
    /*    !*padding: 2px 0px 0px 0px !important;*!*/
    /*}*/
    .left-arrow {
        display: inline-block;
        width: 24px; /* Adjust size as needed */
        height: 24px; /* Adjust size as needed */
        background-image: url('../resourcesNew1/assets/Chevron-backward-blue.svg');
        background-size: contain;
        background-repeat: no-repeat;
        vertical-align: middle; /* Align with text */
        /*margin-right: 5px; !* Space between icon and text *!*/
        margin: 0px 6px 3px 1px !important;
        /*margin-bottom: -1px !important;*/
    }

    .right-arrow {
        display: inline-block;
        width: 24px; /* Adjust size as needed */
        height: 24px; /* Adjust size as needed */
        background-image: url('../resourcesNew1/assets/Chevron-forward-blue.svg');
        background-size: contain;
        background-repeat: no-repeat;
        vertical-align: middle; /* Align with text */
        /*margin-right: 5px;*/
        margin: 0px 1px 3px 6px !important;
        /*margin-bottom: -1px !important;*/
    }

    button.prev.disabled .left-arrow {
        display: inline-block;
        width: 24px; /* Adjust size as needed */
        height: 24px; /* Adjust size as needed */
        background-image: url('../resourcesNew1/assets/Chevron-backward-grey.svg');
        background-size: contain;
        background-repeat: no-repeat;
        vertical-align: middle; /* Align with text */
        vertical-alignddle: middle; /* Align with text */
        margin-right: 5px; /* Space between icon and text */
        cursor: not-allowed;
    }

    button.next.disabled .right-arrow {
        display: inline-block;
        width: 24px; /* Adjust size as needed */
        height: 24px; /* Adjust size as needed */
        background-image: url('../resourcesNew1/assets/Chevron-forward-grey.svg');
        background-size: contain;
        background-repeat: no-repeat;
        vertical-align: middle; /* Align with text */
        margin-right: 5px; /* Space between icon and text */
        cursor: not-allowed;
    }

    .pagination {
        font-family: "Poppins", sans-serif !important;
    }

    .select-wrapper input.select-dropdown {
        /*color: #A7A7A7;*/
        font-family: "Poppins", sans-serif !important;
    }

    .text-white strong {
        font-family: "Poppins", sans-serif !important;
        font-weight: 600 !important;
    }

    td, th {
        padding: 7px 8px;
        color: #707070;
    }

    thead th {
        border-bottom: 1.5px solid #ffa500;
        color: #4377a2;
        padding: 12px 6px;
    }

    #reviewBtn {
        color: white;
        border-radius: 20px;
        background: #005baa;
        display: flex;
        flex-direction: row;
        padding: 6px 8.3px 6px 19px;
        box-sizing: border-box;
        height: 30px;
        width: 68px;
        border: none
    }

    #data_list_table th {
        padding: 15px 13px;
        text-align: left;
        white-space: nowrap;
    }

    #data_list_table td {
        padding: 5px 13px;
        white-space: nowrap;
    }

    .text-right {
        text-align: right !important;
    }

    .table-responsive {
        /*overflow: visible !important;*/
    }

    .container-fluid {
        font-size: 12px !important;
    }

    .page-link.active {
        pointer-events: none; /* Disables clicks */
        opacity: 1.0; /* Makes it visually distinct */
        cursor: default; /* Prevents hover indication */
    }

</style>
<script type="text/javascript">
    history.pushState(null, null, "");
    window.addEventListener('popstate', function () {
        history.pushState(null, null, "");

    });


    function loadDropSearch() {
        var e = document.getElementById("drop_search");
        var strUser = e.options[e.selectedIndex].value;
        document.getElementById("drop_val").value = strUser;

        /* For Dynamic Placeholder in SEARCH */

        if (strUser == "Transaction ID") {
            document.getElementsByName('search')[0].placeholder = 'Enter Transaction ID';
        } else if (strUser == "Payout ID") {
            document.getElementsByName('search')[0].placeholder = 'Enter Payout ID';
        } else if (strUser == "") {
            document.getElementsByName('search')[0].placeholder = 'Please select type to search ';
        }

    }


    function loadSearch() {
        // Show overlay
        $("#overlay").show();

        var Value = document.getElementById("searchApi").value;
        var type = document.getElementById("drop_val").value;

        if (Value.trim() === '' || type.trim() === '') {
            alert("Please choose a value before submitting");
            $("#overlay").hide();
            return;
        }

        // Get the div with the ID 'pag'


        // Perform the redirect with the encoded values
        document.location.href = '${pageContext.request.contextPath}/payoutDataUser/search-pendingPayoutTransactions?value='
            + btoa(Value) + '&type=' + type;

        // If you want to submit a form, uncomment the line below:
        // form.submit();
    }


</script>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col s12">
            <div class="card blue-bg text-white">
                <div class="card-content">
                    <div class="d-flex align-items-center">
                        <h3 class="text-white" style="margin:4px 8px; font-family: Poppins, sans-serif !important; ">
                            <strong style=" font-size: 22px;">Pending Transactions</strong></h3>
                    </div>


                </div>
            </div>
        </div>
    </div>


    <%--    search filter --%>

    <style>
        /*.input-field > label{*/
        /*    transform: none !important;*/
        /*}*/

        select#drop_search option {
            font-size: 12px;
        !important; /* Adjust the size as needed */
        }

        .type_select {
            border: none;
            border-bottom: 1.5px solid orange !important;
            font-size: 2px;
        }

        .dropdown-content {
            top: 50px !important;
        }
    </style>

    <%--    search filter --%>


    <div class="row" id="searchBoxDiv">
        <div class="col s12">
            <div class="card blue-bg text-white">
                <div class="card-content">

                    <!-- SEARCH TEST -->
                    <div class="row" style="display:flex;align-items:center;justify-content:space-between;">
                        <div class="col s12" style="padding: 0 8px !important; font-size: 13px !important;">
                            <div class="input-field col s12 m4 l3" style="font-family:'Poppins',sans-serif;">
                                <select name="drop_search_name" class="type_select"
                                        id="drop_search" onchange="return loadDropSearch();">
                                    <option selected disabled value="" class="font-size-low" id="choose"
                                            style="display: none">Select
                                    </option>
                                    <option value="mobiId" class="font-size-low" style="font-size: 12px !important; font-weight: 400 !important; color: black !important;">Transaction ID</option>
                                    <option value="merchantId" class="font-size-low">Payout ID</option>
                                    <option value="hostId" class="font-size-low">Host Ref ID</option>
                                </select>
                                <label for="drop_search" style="font-size: 14px !important;">Select Type</label>
                                <input type="hidden" id="drop_val">
                            </div>

                            <div class="input-field col s12 offset-l1 offset-m1 m4 l3">
                                <label style="font-size: 16.5px !important;" for="searchApi">Input Selected ID</label>
                                <input type="text" id="searchApi" name="search" class=""
                                       style="font-family:'Poppins',sans-serif;" placeholder="Enter ID here">
                            </div>
                            <div class="input-field col offset-12 s12 m2 l2" style="margin-left: -60px">
                                <div class="button-class" style="padding-top: 10px !important; float: right">
                                    <button class="btn btn-primary blue-btn" type="button" onclick="loadSearch()"
                                            style="font-family:'Poppins',sans-serif;font-size:14px;">Search
                                    </button>
                                </div>
                            </div>
                            <!--
                            <div class="approval-toggle">
                              <label class="toggle-label">Required Finance Approval?</label>
                              <div class="toggle-wrapper">
                                <span class="approval-text" id="approvalStatus">Not Required</span>
                                <label class="switch">
                                  <input type="checkbox" id="financeToggle" onchange="toggleApproval()">
                                  <span class="slider"></span>
                                </label>
                              </div>
                            </div>
                            -->
                        </div>
                    </div>
                    <!--  SEARCH TEST ENDS -->
                </div>
            </div>
        </div>
    </div>

    <style>
//toggle css
.approval-toggle {
  font-family: Arial, sans-serif;
}

.toggle-label {
  font-weight: 600;
  color: #6c757d;
  margin-bottom: 4px;
}

.toggle-wrapper {
  display: flex;
  align-items: center;
  gap: 10px;
}

.approval-text {
  font-weight: 700;
  color: #007bff;
}

/* Entire switch container */
.switch {
  position: relative;
  display: inline-block;
  width: 42px;
  height: 24px;
}

/* Hide native checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* Slider background */
.slider {
  position: absolute;
  cursor: pointer;
  background-color: #ccc;
  border-radius: 34px;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  transition: background-color 0.3s;
  height: 24px !important;
}

/* Circle inside slider */
.slider::before {
  position: absolute;
  content: "";
  height: 18px;
  width: 18px;
  left: 3px;
  bottom: 3px;
  background-color: white;
  border-radius: 50%;
  transition: transform 0.3s;
}

/* Checked state styles */
.switch input:checked + .slider {
  background-color: #28a745;
}

.switch input:checked + .slider::before {
  transform: translateX(18px);
}



//toggle



        .font-size-low {
            font-size: 12px !important;
            font-weight: 400 !important;
            color: black !important;
        }


        #drop_search option:first-child {
            display: none;
        }
    </style>

    <style>
        .blue-btn:hover, #approve:hover, #reject:hover {
            box-shadow: 5px 5px 10px -3px rgba(0, 90, 170, 0.2), /* Right shadow */ -5px 5px 10px -3px rgba(0, 90, 170, 0.2),
                /* Left shadow */ 0 5px 10px -3px rgba(0, 90, 170, 0.2) !important;
        }

        #action_taken option:first-child {
            display: none;
        }

    </style>

    <div id="pagination"></div>
    <input type="hidden" id="pgnum">


    <div class="row">
        <div class="col s12">

            <div class="card border-radius">
                <div class="table-responsive">

                    <table class="table table-striped table-bordered" id="transaction-table">
                        <thead>
                        <tr>
                            <th></th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Transaction ID</th>
                            <th>Payout ID</th>
                            <th>Host ID</th>
                            <th>Account No</th>
                            <th class="text-right">Amount(RM)</th>
                            <th style="text-align: center">Status</th>
                            <th></th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:choose>
                            <c:when test="${not empty paginationBean.itemList}">
                                <c:forEach var="enquiry" items="${paginationBean.itemList}">
                                    <tr>
                                        <td></td>
                                        <td>${enquiry.date}</td>
                                        <td>${enquiry.time}</td>
                                        <td>${enquiry.invoiceId}</td>
                                        <td>${enquiry.payoutId}</td>
                                        <td>${enquiry.curlecRecipient}</td>
                                        <td>${enquiry.accountNumber}</td>
                                        <td class="text-right">
                                            ${enquiry.amount}
                                        </td>
                                        <td style="text-align: center;cursor: pointer;    display: flex !important;    align-items: center !important; justify-content: center;">
                                                <%-- <div class="action_div"
                                                      style="font-family:'Poppins',sans-serif;display: flex;justify-content: center; position: relative;">
                                                     <select name="drop_search" style="position: absolute;top: 100%;left: 0;right: 0;"
                                                             id="action_taken" onchange="return actionTaken(this,'${enquiry.invoiceId}');">
                                                         <option selected value="" id="action_id">Action</option>
                                                         <option value="success">Success</option>
                                                         <option value="failure">Failure</option>
                                                     </select>
                                                 </div>--%>

                                                <%--                                                <select id="action_taken"  class="browser-default action_option action_taken"--%>
                                                <%--                                                        style="border: none !important; color: #707070 !important; height: 2rem !important; width: fit-content !important; font-family: 'Poppins' !important;margin-left: 50px !important"--%>
                                                <%--                                                        onchange="return actionTaken(this,'${enquiry.invoiceId}');">--%>
                                                <%--                                                    <option value="action_id" disabled selected id="action_id"--%>
                                                <%--                                                            style="display: none">Action--%>
                                                <%--                                                    </option>--%>
                                                <%--                                                    <option value="success">Success</option>--%>
                                                <%--                                                    <option value="failure">Failure</option>--%>
                                                <%--                                                </select>--%>

                                            <select class="browser-default action_option action_taken" id="action_taken"
                                                    style="border: none !important; color: #707070 !important; height: 2rem !important; width: fit-content !important; font-family: 'Poppins' !important;"
                                                    onchange="return actionTaken(this, '${enquiry.invoiceId}');">
                                                <option value="" disabled selected>Action</option>
                                                <option value="success">Success</option>
                                                <option value="failure">Failure</option>
                                            </select>


                                        </td>
                                        <td></td>
                                    </tr>
                                </c:forEach>
                            </c:when>

                            <c:otherwise>
                                <tr>
                                    <td colspan="10"
                                        style="text-align: center; border-bottom: solid; border-bottom-color: white !important">
                                        <div id="no-data">
                                            <p>No records found</p>
                                        </div>
                                    </td>
                                </tr>
                            </c:otherwise>
                        </c:choose>
                        </tbody>

                    </table>
                    <div class="table-responsive m-b-20 m-t-15" style="font-size: 12px !important;">

                    </div>
                </div>


            </div>
            <div class="card border-radius">
                <div class="pagination" id="pag"></div>
            </div>
        </div>
    </div>

    <style>
        /* Remove default dropdown arrow */
        #action_taken {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background: url('${pageContext.request.contextPath}/resourcesNew1/assets/dashicons_arrow-down.svg') no-repeat right center;
            background-size: 12px 12px; /* Adjust size of the icon (smaller) */
            padding-right: 20px; /* Adjust padding to reduce space between the icon and text */
            color: #707070 !important;
            height: 2rem !important;
            width: fit-content !important;
            font-family: 'Poppins' !important;
            border: none !important; /* Remove any border */
        }

        /* Additional styles for input field */
        input[type="text"]:not(.browser-default) {
            margin: 8px 0 8px 0 !important;
            font-size: 13px !important;
            border-bottom: 1.5px solid #F5A623 !important;
        }

        input[type="text"]:not(.browser-default):focus:not([readonly]) {
            box-shadow: none !important;
        }

        input[type="text"]:not(.browser-default):focus:not([readonly]) + label {
            color: #929292 !important;
            font-size: 13px !important;
            padding: 6px 8px !important;
        }
    </style>


    <%--action pop up --%>

    <div class="more_info modal-container" id="modalContainerCard">
        <div id="moredetails" class="moredetails-modal-class">
            <div class="outerborder" style="padding: 0px;">

                <div class="modal-header header_txndetails">
                    <div class="color-blue " style="font-size: 16px; font-weight: 600;">
                        More Info
                        <button id="closecardmore_xmark" onclick="closeCard()"
                                style="float: right; margin: 2px; background-color: transparent; border: none;">
                            <img
                                    src="${pageContext.request.contextPath}/resourcesNew1/assets/mastersearch/xmark.svg"
                                    width="20" height="20" class="cursor-pointer " alt="">
                        </button>
                    </div>
                </div>
                <div class="message" id="messageId">
                    <p style="margin: 0"></p>
                </div>
                <div class="modal-content content-moredetails">
                    <div class="color-blue" style="font-size: 16px; font-weight: 500; margin: 10px 0;padding: 0px 8px">
                        Transaction Details
                    </div>
                    <div class="txn-table">
                        <div class="transaction-details">
                            <input type="hidden" id="info-invoiceId">
                            <%--                            <p><span class="label">Customer Name</span><span>-</span><span class="value" id="info-customerName">Muhamad Shafaad Zakaria</span></p>--%>
                            <%--                            <p><span class="label">Name in bank a/c</span><span>-</span><span class="value" id="info-nameInBank">Dhianesh saravanan</span></p>--%>
                            <%--                            <p><span class="label">Invoice id</span><span>-</span><span class="value" id="info-payoutId">192929292</span></p>--%>
                            <%--                            <p><span class="label">Account No</span><span>-</span><span class="value" id="info-accountNumber">0987654321</span></p>--%>
                            <%--                            <p><span class="label">Amount</span><span>-</span><span class="value" id="info-amount">MYR 500</span></p>--%>
                            <%--                            <p><span class="label">Pending Reason</span><span>-</span><span class="value" id="info-pendingReason">Account name mismatch</span></p>--%>
                            <%--                            <p><span class="label">Transaction ID</span><span>-</span><span class="value" id="info-invoiceId-display">Invoice Id</span></p>--%>


                            <table class="info_table">
                                <tbody>
                                <tr>
                                    <td class="label info_label">Customer Name</td>
                                    <td class="separator">-</td>
                                    <td class="value more_info_details" id="info-customerName"></td>
                                </tr>
                                <tr>
                                    <td class="label">Name in bank Ac</td>
                                    <td class="separator">-</td>
                                    <td class="value more_info_details" id="info-nameInBank"></td>
                                </tr>
                                <tr>
                                    <td class="label">Payout ID</td>
                                    <td class="separator">-</td>
                                    <td class="value more_info_details" id="info-payoutId"></td>
                                </tr>
                                <tr>
                                    <td class="label">Account No</td>
                                    <td class="separator">-</td>
                                    <td class="value more_info_details" id="info-accountNumber"></td>
                                </tr>
                                <tr>
                                    <td class="label">Amount</td>
                                    <td class="separator">-</td>
                                    <td class="value more_info_details" id="info-amount"></td>
                                </tr>
                                <tr>
                                    <td class="label">Pending Reason</td>
                                    <td class="separator">-</td>
                                    <td class="value more_info_details" id="info-pendingReason"></td>
                                </tr>
                                <tr>
                                    <td class="label">Transaction ID</td>
                                    <td class="separator">-</td>
                                    <td class="value more_info_details" id="info-invoiceId-display"></td>
                                </tr>
                                <tr>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>


                </div>


            </div>
        </div>


    </div>
    <style>

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .action_div .select-wrapper {
            width: 60%;
        }

        .action_div .select-wrapper input.select-dropdown {
            border-bottom: none !important;
        }

        .select-wrapper .caret {
            /*fill: #c5c5c5 !important;*/

        }

        .action_option:focus {
            outline: none !important;
        }

        .action_div .select-wrapper .caret {
            left: 4rem;
        }

        /* Dropdown Button */
        .dropdown-button {
            background-color: white;
            color: black;
            font-size: 16px;
            padding: 10px 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            cursor: pointer;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Dropdown Menu */
        .dropdown-menu {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: white;
            min-width: 150px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        /* Dropdown Items */
        .dropdown-item {
            color: black;
            padding: 10px 15px;
            text-decoration: none;
            display: block;
            transition: background-color 0.2s;
        }

        /* Hover Effects */
        .dropdown-item:hover {
            background-color: #f0f0f0;
        }

        /* Show Dropdown Menu on Button Hover */
        .dropdown:hover .dropdown-menu {
            display: block;
        }

        #commentsTextarea::placeholder {
            color: #ecebeb;
        }

        .info_table tr {
            border: none;
        }

        .info_table tr td {
            white-space: nowrap;
        }

        .separator {
            font-weight: 500;
        }

        .label {
            /*display: inline-block;*/
            /*width: 150px; !* Adjust width to your preference *!*/
            text-align: left;
            font-weight: 500;
            color: #6d6868;
            font-size: 14px;
            /*padding: 3px 10px 3px 0px;*/
            white-space: nowrap;
            width: 25%;
            padding: 0 10px;
        }

        .value {
            margin-left: 10px; /* Adjust space between dash and value */
            white-space: nowrap;
        }

    </style>

    </style>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var elems = document.querySelectorAll('select');
            M.FormSelect.init(elems);
        });


        var dynamicTableRow;
//approvePayout(invoiceId)
        /*function approvePayout(invoiceId) {
            document.getElementById("confirmation-modal-id").style.display = "none";
            // document.getElementById("approve-modal-id").style.display = "block";
            // document.getElementById("dynamic_message").innerText = "The Transaction has been aprroved successfully";

            const checkbox = document.getElementById('financeToggle');
            const update_success_url = `${pageContext.request.contextPath}/payoutDataUser/request-approval-mail-pendingPayoutTransactions?invoiceId=` + invoiceId;

            const update_success_url = `${pageContext.request.contextPath}/payoutDataUser/update-success-pendingPayoutTransactions?invoiceId=` + invoiceId;


            console.log('url to update to success : ', update_success_url);

            fetch(update_success_url, {
                method: "GET"
            })
                .then(response => response.json())
                .then(result => {
                    console.log('result : ', result);
                    if (!result.success) {
                        document.getElementById("rare-scenario-msg-content").textContent = "this transaction is already marked as " + result.actualStatus;
                        document.getElementById("rare-scenario-model").style.display = "block";
                    } else {
                        document.getElementById("approve-modal-id").style.display = "block";
                    }

                });

            dynamicTableRow.remove();


        }*/

//approval for success
function approvePayout(invoiceId) {
    document.getElementById("confirmation-modal-id").style.display = "none";

    /*const checkbox = document.getElementById('financeToggle');*/
    let update_success_url = "";

    if (false) {
        update_success_url = `${pageContext.request.contextPath}/payoutDataUser/payout-transactions/pending/mail/?invoiceId=` + invoiceId;

         console.log('URL to update:', update_success_url);

            fetch(update_success_url, {
                method: "GET"
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error("Server error: " + response.status);
                }
                return response.json();
            })
            .then(result => {
                console.log('result:', result);

                if (!result.success) {
                    document.getElementById("rare-scenario-msg-content").textContent = "This transaction is already marked as " + result.actualStatus;
                    document.getElementById("rare-scenario-model").style.display = "block";
                } else {
                    document.getElementById("approve-modal-mail-id").style.display = "block";
                }

                dynamicTableRow.remove();
            })
            .catch(error => {
                console.error("Error during fetch:", error);
                document.getElementById("rare-scenario-msg-content").textContent = "An unexpected error occurred: " + error.message;
                document.getElementById("rare-scenario-model").style.display = "block";
            });


    } else {
        update_success_url = `${pageContext.request.contextPath}/payoutDataUser/update-success-pendingPayoutTransactions/?invoiceId=` + invoiceId;

         console.log('URL to update:', update_success_url);

            fetch(update_success_url, {
                method: "GET"
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error("Server error: " + response.status);
                }
                return response.json();
            })
            .then(result => {
                console.log('result:', result);

                if (!result.success) {
                    document.getElementById("rare-scenario-msg-content").textContent = "This transaction is already marked as " + result.actualStatus;
                    document.getElementById("rare-scenario-model").style.display = "block";
                } else {
                    document.getElementById("approve-modal-id").style.display = "block";
                }

                dynamicTableRow.remove();
            })
            .catch(error => {
                console.error("Error during fetch:", error);
                document.getElementById("rare-scenario-msg-content").textContent = "An unexpected error occurred: " + error.message;
                document.getElementById("rare-scenario-model").style.display = "block";
            });
    }

    console.log('URL to update:', update_success_url);

}





        function handleSingleRow()
        {
            let rowCount = document.querySelectorAll("#transaction-table tr").length;
            console.log('count : ', rowCount);
            console.log('is : ', rowCount === 1);

            if (rowCount === 1) {
                console.log('inside');
                document.location.href = '${pageContext.request.contextPath}/payoutDataUser/list-pendingPayoutTransactions';
            }
        }

        function rejectPayout(invoiceId) {
            document.getElementById("failure-reason-modal-id").style.display = "none";
            const failureReason = document.getElementById("commentsTextareaforReject").value;
            console.log('length : ', failureReason.length);

            if (failureReason.length > 255) {
                alert('Please ensure the confirmation message is under 255 characters.');
                document.getElementById('commentsTextareaforReject').value = '';
                changeAgainToAction();
                return;
            }

            // document.getElementById("approve-modal-id").style.display = "block";
            // document.getElementById("dynamic_message").innerText = "The Transaction has been aprroved successfully";

            /*const checkbox = document.getElementById('financeToggle');*/
            let update_failure_url = "";
                if (false) {
                    update_failure_url = `${pageContext.request.contextPath}/payoutDataUser/payout-transactions/pending/mail/?invoiceId=` + invoiceId + '&failureReason=' + failureReason;

                        console.log('url to update to success : ', update_failure_url);

                                fetch(update_failure_url, {
                                    method: "GET"
                                })
                                    .then(response => response.json())
                                    .then(result => {
                                        console.log('result : ', result);
                                        if (!result.success) {
                                            document.getElementById("rare-scenario-msg-content").textContent = "this transaction is already marked as " + result.actualStatus;
                                            document.getElementById("rare-scenario-model").style.display = "block";
                                        } else {
                                            document.getElementById("reject-modal-mail-id").style.display = "block";
                                        }
                                    });
                                dynamicTableRow.remove();
                                document.getElementById('commentsTextareaforReject').value = '';

                } else {
                        update_failure_url = `${pageContext.request.contextPath}/payoutDataUser/update-failure-pendingPayoutTransactions?invoiceId=` + invoiceId + '&failureReason=' + failureReason;
                            console.log('url to update to success : ', update_failure_url);

                                    fetch(update_failure_url, {
                                        method: "GET"
                                    })
                                        .then(response => response.json())
                                        .then(result => {
                                            console.log('result : ', result);
                                            if (!result.success) {
                                                document.getElementById("rare-scenario-msg-content").textContent = "this transaction is already marked as " + result.actualStatus;
                                                document.getElementById("rare-scenario-model").style.display = "block";
                                            } else {
                                                document.getElementById("reject-modal-id").style.display = "block";
                                            }
                                        });
                                    dynamicTableRow.remove();
                                    document.getElementById('commentsTextareaforReject').value = '';

                }



        }

        function actionTaken(dropDown, invoiceId) {

            const actionTaken = dropDown.value;

            // document.getElementById("action_id").value = actionTaken;

            console.log('action taken : ', actionTaken);

            dynamicTableRow = dropDown.closest("tr");


            if (actionTaken === '') {
                return;
            }

            if (actionTaken === 'success') {
                document.getElementById('invoice-for-approve').value = invoiceId;
                document.getElementById("confirmation-modal-id").style.display = "block";

            } else {
                document.getElementById('invoice-id-for-failure').value = invoiceId;
                document.getElementById("failure-reason-modal-id").style.display = "block";

            }
        }

        function getSuccessPopup() {
            document.getElementById('invoice-for-approve').value = invoiceId;
            document.getElementById("confirmation-modal-id").style.display = "block";
        }


        function openApprove(invoiceId) {
            document.getElementById("modalContainerCard").style.display = "none";
            document.getElementById("confirmation-modal-id").style.display = "block";

            document.getElementById("invoice-for-approve").value = invoiceId;


        }

        function openReject(invoiceId) {
            document.getElementById("modalContainerCard").style.display = "none";
            document.getElementById("failure-reason-modal-id").style.display = "block";
            // document.getElementById("commentsTextareaforReject").focus();
            document.getElementById("invoice-for-rejecting-the-Payout").value = invoiceId;


        }


        function closeCard() {
            document.getElementById("modalContainerCard").style.display = "none";

        }

        function more_info_approve(invoiceId) {
            document.getElementById("modalContainerCard").style.display = "none";
            document.getElementById("approve-modal-id").style.display = "block";

            // document.getElementById("dynamic_message").innerText = "The Transaction has been aprroved successfully";

            var invoiceID = document.getElementById("info-invoiceId").value;


            document.location.href = '${pageContext.request.contextPath}/searchNew/approvePayout?invoiceID=' + invoiceID;

        }

        function more_info_reject(invoiceID) {

            var comment = document.getElementById('commentsTextarea').value.trim();

            console.log('comment : ', comment);

            // Check if the comment box is empty
            if (comment === "") {
                alert("Please provide a reason for rejection.");
                return;
            }
            document.getElementById("modalContainerCard").style.display = "none";
            document.getElementById("approve-modal-id").style.display = "block";
            // document.getElementById("dynamic_message").innerText = "The Transaction has been rejected";

            console.log('invoice id : ', invoiceID);
            console.log('comment : ', comment);
            document.location.href = '${pageContext.request.contextPath}/rejectPayout?invoiceID=' + invoiceID + '&reason=' + comment;

        }

        function closeApprove() {
            document.getElementById("approve-modal-id").style.display = "none";
            handleSingleRow();

        }

        function closeApproveMail() {
            document.getElementById("approve-modal-mail-id").style.display = "none";
            handleSingleRow();

        }

        function closeReject() {
            document.getElementById("reject-modal-id").style.display = "none";
            handleSingleRow();

        }

        function closeRejectMail() {
            document.getElementById("reject-modal-mail-id").style.display = "none";
            handleSingleRow();

        }

        function close_confirmation() {
            document.getElementById("failure-reason-modal-id").style.display = "none";
            changeAgainToAction();
            document.getElementById('commentsTextareaforReject').value = '';
            handleSingleRow();

        }

        function close_aproval() {
            document.getElementById("confirmation-modal-id").style.display = "none";
            changeAgainToAction();
            handleSingleRow();

        }

        function close_modal(idToClose) {
            document.getElementById(idToClose).style.display = "none";
            changeAgainToAction();
            handleSingleRow();
        }

        function changeAgainToAction() {
            document.querySelectorAll(".action_taken").forEach((dropdown) => {
                dropdown.value = "";
            });
        }


//toggle script
         function toggleApproval() {
            const checkbox = document.getElementById('financeToggle');
            const statusText = document.getElementById('approvalStatus');
            statusText.textContent = checkbox.checked ? 'Yes, Required' : 'Not Required';
          }



    </script>

    <%--    -------------------------------comment area--%>
    <div class="approve-modal-class" id="failure-reason-modal-id">
        <input type="hidden" id="invoice-id-for-failure">
        <div class="approve-modal-content" style="margin-top: 80px">
            <div>
                <div style="border-bottom: 1.8px solid orange; padding: 12px 24px; text-align: center; font-size: 16px; color: #005baa; font-weight: 600">
                    Confirmation
                </div>

                <div class="reason-div" style="padding: 15px 30px 0px 30px; text-align: center;">
                    <img src="${pageContext.request.contextPath}/resourcesNew1/assets/confirmation.svg" width="40"
                         height="40"/>
                </div>
                <div class="center-text" style="font-size: 18px; color: #858585; margin:20px 0 5px 0">
                    <p style="font-size:15px;">Are you sure want to mark this transaction as <br></p>
                    <p style="font-size:15px;">failed?</p>
                </div>
                <input type="hidden" id="invoice-for-rejecting-the-Payout">
                <div style="margin-bottom: 3%; text-align: center">


                    <div>
                       <textarea placeholder="Provide the failure reason here..."
                                 id="commentsTextareaforReject" required
                                 style="width: 85%; font-family: 'Poppins'; padding: 10px; min-height: 6rem; background-color: transparent; color: #586570; resize: none; border-color: #ADADAD; border-radius: 6px; margin-top: 4px; height: auto; font-size: 14px;"></textarea>

                        <p id="error_message_reject_confirm" style="color: red;font-size: 12px;"></p>

                    </div>
                </div>

                <div class="approve-button"
                     style="padding: 10px; display: flex; justify-content: center; background-color: #EFF8FF;gap: 18px; border-bottom-left-radius: 15px; border-bottom-right-radius: 15px;">
                    <button type="button" class="close-Approve" id="reject_confirmation" onclick="close_confirmation()"
                            style="background-color: transparent !important; font-family: 'Poppins';font-weight: 400; color: #005baa !important;border-style: solid !important;border-width: 1px !important; font-size: 13px;">
                        Cancel
                    </button>
                    <button type="button" class="close-Approve" id="reject_cancel"
                            style="font-size: 13px;font-family: 'Poppins';font-weight: 400;"
                            onclick="rejectPayout(document.getElementById('invoice-id-for-failure').value)">
                        Confirm
                    </button>
                </div>
            </div>
        </div>


    </div>

    <div id="approve-modal-id" class="approve-modal-class">
        <div class="approve-modal-content">
            <div>
                <div style="border-bottom: 1.8px solid orange; padding: 9px 24px; text-align: center; font-size: 16px; color: #005baa; font-weight: 500">
                    Notification
                    <%--<span style="float: right">X</span>--%>
                </div>

                <div class="reason-div" style="padding: 15px 30px; text-align: center;">
                    <img src="${pageContext.request.contextPath}/resourcesNew1/assets/Done 2.svg" width="50"
                         height="35"/>
                    <p id="reason-id" class="reason-class"></p>
                </div>
                <div class="center-text" style="height:35px; margin-top: -15px; font-size: 16px; font-weight: 400;">
                    <p>Transaction successfully marked as completed.<br></p>
                    <p>You can now view it in the main summary.</p>
                </div>

                <div class="approve-button"
                     style="padding: 10px; display: flex; justify-content: center; background-color: #005baa25">
                    <button type="button" class="close-Approve" id="closeApprove-id" onclick="closeApprove()">Close
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div id="approve-modal-mail-id" class="approve-modal-class">
            <div class="approve-modal-content">
                <div>
                    <div style="border-bottom: 1.8px solid orange; padding: 9px 24px; text-align: center; font-size: 16px; color: #005baa; font-weight: 500">
                        Notification
                        <%--<span style="float: right">X</span>--%>
                    </div>

                    <div class="reason-div" style="padding: 15px 30px; text-align: center;">
                        <img src="${pageContext.request.contextPath}/resourcesNew1/assets/Done 2.svg" width="50"
                             height="35"/>
                        <p id="reason-id" class="reason-class"></p>
                    </div>
                    <div class="center-text" style="height:35px; margin-top: -15px; font-size: 16px; font-weight: 400;">
                        <p>Approval mail sent to the Finance team successfully.<br></p>
                        <p>Transaction status will be changed after approval.</p>
                    </div>

                    <div class="approve-button"
                         style="padding: 10px; display: flex; justify-content: center; background-color: #005baa25">
                        <button type="button" class="close-Approve" id="closeApprove-mail-id" onclick="closeApproveMail()">Close
                        </button>
                    </div>
                </div>
            </div>
        </div>
    <div id="reject-modal-id" class="approve-modal-class">
        <div class="approve-modal-content">
            <div>
                <div style="border-bottom: 1.8px solid orange; padding: 15px 24px; text-align: center; font-size: 16px; color: #005baa; font-weight: 500">
                    Notification
                    <%--<span style="float: right">X</span>--%>
                </div>

                <div class="reason-div" style="padding: 5px 30px; text-align: center;margin-top: 12px">
                    <img src="${pageContext.request.contextPath}/resourcesNew1/assets/Cancel 2.svg" width="50"
                         height="35px"/>
                </div>
                <div class="center-text">
                    <p>Transaction successfully marked as completed.<br></p>
                    <p>You can now view it in the main summary.</p>
                </div>

                <div class="approve-button"
                     style="padding: 10px; display: flex; justify-content: center; background-color: #005baa25">
                    <button type="button" class="close-Approve" id="closeReject" onclick="closeReject()">Close
                    </button>
                </div>
            </div>
        </div>
    </div>

     <div id="reject-modal-mail-id" class="approve-modal-class">
            <div class="approve-modal-content">
                <div>
                    <div style="border-bottom: 1.8px solid orange; padding: 15px 24px; text-align: center; font-size: 16px; color: #005baa; font-weight: 500">
                        Notification
                        <%--<span style="float: right">X</span>--%>
                    </div>

                    <div class="reason-div" style="padding: 5px 30px; text-align: center;margin-top: 12px">
                        <img src="${pageContext.request.contextPath}/resourcesNew1/assets/Cancel 2.svg" width="50"
                             height="35px"/>
                    </div>
                    <div class="center-text">
                        <p>Approval mail sent to the Finance team successfully.<br></p>
                        <p>Transaction status will be changed after approval.</p>
                    </div>

                    <div class="approve-button"
                         style="padding: 10px; display: flex; justify-content: center; background-color: #005baa25">
                        <button type="button" class="close-Approve" id="closeReject-mail" onclick="closeRejectMail()">Close
                        </button>
                    </div>
                </div>
            </div>
        </div>

    <div id="rare-scenario-model" class="approve-modal-class">
        <div class="approve-modal-content">
            <div>
                <div style="border-bottom: 1.8px solid orange; padding: 10px 24px; text-align: center; font-size: 16px; color: #005baa; font-weight: 600">
                    Notification
                    <%--<span style="float: right">X</span>--%>
                </div>

                <div class="reason-div" style="padding: 15px 30px 0px 30px; text-align: center;">
                    <img src="${pageContext.request.contextPath}/resourcesNew1/assets/Cancel 2.svg" width="40"
                         height="40"/>
                    <%--                    <p id="reason-id" class="reason-class"></p>--%>
                </div>
                <div class="center-text" style="font-size: 18px;font-weight: 400; color: #858585">
                    <p id="rare-scenario-msg-content"><br></p>

                </div>

                <div class="approve-button"
                     style="padding: 10px; display: flex; justify-content: center; background-color: #EFF8FF;gap: 18px; border-bottom-left-radius: 15px; border-bottom-right-radius: 15px;">
                    <button type="button" class="close-Approve" id="closeRare-id"
                            style="font-family: 'Poppins'; font-weight: 400"
                            onclick="close_modal('rare-scenario-model')">Close
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="approve-modal-class" id="confirmation-modal-id">
        <input type="hidden" id="invoice-for-approve">

        <div class="approve-modal-content">
            <div>
                <div style="border-bottom: 1.8px solid orange; padding: 15px 24px; text-align: center; font-size: 16px; color: #005baa; font-weight: 500">
                    Confirmation
                </div>

                <div class="reason-div" style="padding: 15px 30px; text-align: center;">
                    <img src="${pageContext.request.contextPath}/resourcesNew1/assets/withdraw-confirm.png" width="35"
                         height="35"/>
                    <%--                    <p id="reason-id" class="reason-class"></p>--%>
                </div>
                <div>
                    <p style="
    display: flex;
    font-size: 15px !important;
    font-weight: 500 !important;
    justify-content: center;
    align-items: center;
    text-align: center;
    margin-bottom: 30px;
padding: 0;
">
                        Are you sure want to mark this transaction as <br> successful?
                    </p>

                </div>
                <div class="buttonsHorizontally">

                </div>

                <div class="approve-button"
                     style="padding: 10px; display: flex; justify-content: center; background-color: #005baa25;gap: 18px">
                    <button type="button" class="close-Approve" id="approval_confirmation" onclick="close_aproval()"
                            style="background-color: transparent !important;color: #005baa !important;border-style: solid !important;border-width: 1px !important;">
                        Cancel
                    </button>
                    <button type="button" class="close-Approve" id="approval_cancel"
                            onclick="approvePayout(document.getElementById('invoice-for-approve').value)">Confirm
                    </button>
                </div>
            </div>
        </div>

    </div>

    <div class="approve-modal-class" id="confirmation-modal-id-failure">
        <input type="hidden" id="invoice-for-failure">

        <div class="approve-modal-content">
            <div>
                <div style="border-bottom: 1px solid orange; padding: 15px 24px; text-align: center; font-size: 16px; color: #005baa; font-weight: 500">
                    Confirmation
                </div>

                <div class="reason-div" style="padding: 15px 30px; text-align: center;">
                    <img src="${pageContext.request.contextPath}/resourcesNew1/assets/withdraw-confirm.png" width="50"
                         height="50"/>
                    <%--                    <p id="reason-id" class="reason-class"></p>--%>
                </div>
                <div>
                    <p style="
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    margin-bottom: 30px;">Are you sure want to mark this transaction as failed ? </p>
                </div>
                <div class="buttonsHorizontally">

                </div>

                <div class="approve-button"
                     style="padding: 10px; display: flex; justify-content: center; background-color: #005baa25;gap: 18px">
                    <button type="button" class="close-Approve" id="failure_confirmation"
                            onclick="close_modal('confirmation-modal-id-failure')"
                            style="background-color: transparent !important;color: #005baa !important;border-style: solid !important;border-width: 1px !important;">
                        cancel
                    </button>
                    <button type="button" class="close-Approve" id="failure_cancel"
                            onclick="rejectPayout(document.getElementById('invoice-for-failure').value)">confirm
                    </button>
                </div>
            </div>
        </div>

    </div>


</div>


<style>

    #approval_confirmation:hover,
    #approval_cancel:hover {
        box-shadow: 5px 5px 10px -3px rgba(0, 90, 170, 0.2), /* Right shadow */ -5px 5px 10px -3px rgba(0, 90, 170, 0.2), /* Left shadow */ 0 5px 10px -3px rgba(0, 90, 170, 0.2) !important;
    }

    #reject_confirmation:hover,
    #reject_cancel:hover {
        box-shadow: 5px 5px 10px -3px rgba(0, 90, 170, 0.2), /* Right shadow */ -5px 5px 10px -3px rgba(0, 90, 170, 0.2), /* Left shadow */ 0 5px 10px -3px rgba(0, 90, 170, 0.2) !important;
    }

    .required-text {
        font-size: 12px;
        color: red;
    }

    .btnbtn {
        padding: 0 !important;
        color: #2ECC71 !important;
        background-color: white !important;
        border-style: solid;
        border-width: 1px !important;
        display: flex;
        align-items: center;
        justify-content: space-between;
        transition: background-color 0.3s ease;
    }

    .btnbtn:hover {
        background-color: #CEFFCB !important;
    }

    #data_list_table th {
        font-weight: 600; /* Semi-bold */
    }

    #commentsTextareaforReject::placeholder {
        color: #ADADAD; /* Color of the placeholder text */
        opacity: 1; /* Ensures the color is not faded */
    }

    .rejectTh :hover {
        border-color: red !important;
        box-shadow: 0 0 10px red !important;
        border-radius: 50%;
    }

    .approve-modal-class {
        display: none;
        position: fixed;
        z-index: 999;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: hidden;
        background-color: rgba(0, 0, 0, 0.4);
    }

    .approve-modal-content {
        background-color: #fefefe;
        margin: 13% auto;
        border: 1px solid #888;
        width: 92%;
        max-width: 460px;
        border-radius: 15px;
        height: auto;
    }
    .success-popup-content {
        height: 80px !important;
    }

    .approve-modal-content {
        position: relative;
    }

    .yellow-line-approve {
        background-color: #f0c207;
        height: 0.9px;
        position: absolute;
        top: 51px;
        width: calc(100% - 1px);
        left: 1px;
    }

    .approve-reason-head {
        color: #005baa;
        font-size: 18px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .close-Approve {
        background-color: #005baa;
        color: white;
        border-radius: 25px;
        border: none;
        padding: 10px 27px;
        font-size: 12px;
        height: 35px;
        outline: none;
        cursor: pointer;
    }

    .close-Approve:focus, .close-Approve:active {
        background-color: #005baa; /* Same color as default */
    }

</style>

<style>
    .transaction-details p {
        font-family: "Poppins", sans-serif !important;
        margin: 0;
        padding: 5px 0;
        font-size: 14px;
        color: #333333;
    }

    .row .col {
        padding: 0 1.2rem !important;
    }

    .input-field label {
        left: 1.2rem !important;
    }

    .moredetails-open {
        overflow-y: scroll !important;
    }

    .align-center {
        text-align: center !important;
    }

    .align-right {
        text-align: right !important;
    }

    .box-shadow-none {
        box-shadow: none !important;
    }

    .shadow-sm {
        box-shadow: 0px 5px 16px 2px #f3f2f2 !important;
    }

    .color-blue {
        color: #005baa;
    }

    .color-green {
        color: #0C9F02;
    }

    .color_lightgreen {
        color: #45da3b;
    }

    .color-red {
        color: red;
    }

    .color-orange {
        color: orange;
    }

    .color-skyblue {
        color: #49CCF9;
    }

    .color-grey {
        color: #858585;
    }

    .fw-600 {
        font-weight: 600;
    }

    .fw-500 {
        font-weight: 500;
    }

    .ml-1 {
        margin-left: 4px !important;
    }

    .m-0 {
        margin: 0;
    }

    .cursor-pointer {
        cursor: pointer;
    }

    .radius-10 {
        border-radius: 10px !important;
    }

    .font-size-md {
        font-size: 1.4rem;
    }

    .input-field > label {
        font-size: 1.3rem !important;
    }

    .mt-0 {
        margin-top: 0 !important;
    }

    .mb-0 {
        margin-bottom: 0 !important;
    }

    .mb-1 {
        margin-bottom: 4px !important;
    }

    .mt-2 {
        margin-top: 2rem !important;
    }

    .mt-1 {
        margin-top: 1rem !important;
    }


    input::placeholder {
        color: #C5C5C5 !important;
    }

    .select-wrapper input.select-dropdown {
        border-bottom: 1.5px solid #F5A623 !important;
        font-family: "Poppins", sans-serif !important;
    }

    .blue-btn-for-Approve-green {
        background-color: white !important;
        border-radius: 50px !important;
        text-transform: capitalize !important;
        font-size: 0.9rem !important;
        padding: 0 20px !important;
    }

    .blue-btn {
        background-color: #005baa !important;
        border-radius: 50px !important;
        text-transform: capitalize !important;
        font-size: 0.9rem !important;
        padding: 0 20px !important;
    }


    #action_taken {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        background: url('${pageContext.request.contextPath}/resourcesNew1/assets/dashicons_arrow-down.svg') no-repeat right center;
        background-size: 18px 18px; /* Adjust size of the icon (smaller) */
        padding-right: 20px; /* Adjust padding to reduce space between the icon and text */
        color: #707070 !important;
        height: 2rem !important;
        width: fit-content !important;
        font-family: 'Poppins' !important;
        border: none !important; /* Remove any border */
    }


    input[type="text"]:not(.browser-default) {
        margin: 8px 0 8px 0 !important;
        font-size: 13px !important;
        border-bottom: 1.5px solid #F5A623 !important;
    }

    input[type="text"]:not(.browser-default):focus:not([readonly]) {
        box-shadow: none !important;
    }

    input[type="text"]:not(.browser-default):focus:not([readonly]) + label {
        color: #929292 !important;
        font-size: 13px !important;
        padding: 6px 8px !important;
    }


    .dropdown-content li > span {
        color: #929292 !important;
        font-size: 13px !important;
        padding: 6px 8px !important;
    }

    .dropdown-content li:hover {
        background-color: #005baa !important;
    }

    .dropdown-content li:hover span {
        color: #fff !important;
    }

    .dropdown-content li {
        clear: both !important;
        color: rgba(0, 0, 0, 0.87) !important;
        cursor: pointer !important;
        width: 100% !important;
        text-align: left !important;
        min-height: 0px !important;
        border-radius: 5px !important;

    }

    .dropdown-content li:first-child {
        pointer-events: none !important;
    }


    .dropdown-content {
        top: 10px !important;
    }

    .scrollable-table {
        overflow-x: auto;
        text-wrap: nowrap;
        scrollbar-width: thin;
    }

    .summary_table th {
        color: #005baa;
        font-weight: 600 !important;
        border-bottom: 2px solid #F5A623;
        font-size: 13px !important;
        padding: 10px 25px;
    }

    .summary_table td {
        color: #929292;
        font-weight: 400 !important;
        /* border-bottom: 1.5px solid #ddd ; */
        font-size: 13px !important;
        padding: 10px 25px;
    }

    /* modal style */
    .modal-overlay {
        opacity: 0.3 !important;
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

    .closebtn {
        height: 32px !important;
        line-height: 32px !important;
        min-width: 15%;
        width: fit-content;
        font-size: 12px !important;
    }

    .content-declinedreason {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 7px 30px !important;
    }

    .content-moredetails {
        padding: 7px 24px !important;
    }

    .txn-table {
        overflow-y: auto;
        scrollbar-width: none;
    }

    .content-moredetails table thead tr th {
        padding: 10px 0px;
        font-size: 18px;
    }

    .content-moredetails table thead tr {
        border-bottom: none !important;
    }

    .header_txndetails {
        padding: 10px 6px 10px 6px;
        border-bottom: 2.5px solid #F5A623;
    }


    .header_paymentslip {
        padding: 12px 6px 12px 6px;
        border-bottom: 2px solid #F5A623;
    }

    .row .col.offset-l1 {
        margin-left: 3.33333%;
    }

    /* more details modal   */
    .modal-container {
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

    .moredetails-modal-class {
        min-width: 55%;
        width: fit-content;
        max-width: 65%;
        background-color: #fff;
        border-radius: 10px !important;
        margin: 5% auto;
    }

    .moredetails_footer, .footer_slip, .footer_reason {
        border-radius: 0 0 10px 10px;
        background-color: #fafafa;
        padding: 4px 6px;
        height: 56px;
        width: 100%;
        text-align: right;
    }

    /* slip modal */
    .modal-container_slip {
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

    .viewreceipt-modal-class {
        min-width: 360px !important;
        width: fit-content !important;
        max-width: 33% !important;
        background-color: #fff !important;
        border-radius: 10px !important;
        margin: 3% auto;
    }

    /* decline reason modal */
    .modal_container_declinereason {
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

    .decline-reason-modal-class {
        min-width: 407px !important;
        width: fit-content !important;
        max-width: 35% !important;
        background-color: #fff !important;
        border-radius: 10px !important;
        margin: 10% auto;
    }

    .txn-popuptable tr {
        border-bottom: none !important;
    }

    .txn-details-table tr {
        display: flex;
    }

    .txn-details-table tr td {
        padding: 2px 0px;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        justify-content: center;
        overflow-wrap: anywhere;
    }

    .hyphen {
        text-align: center;
        font-size: 23px;
        font-weight: 400;
        color: #858585;
        flex: 0.3;
    }

    .colan {
        text-align: left;
        font-size: 13px;
        font-weight: 400;
        color: #858585;
        flex: 0.1 !important;
    }

    .data_option {
        flex: 0.9;
        font-weight: 600 !important;
        color: #858585 !important;
        font-size: 14px;
    }

    .data_value {
        flex: 1;
        color: #858585;
        font-size: 14px;
    }

    .slip_outer_border {
        padding: 15px 28px;
    }

    .slip_inner_border {
        padding: 10px 15px;
        border: 1.5px solid #ffc15d;
        border-radius: 10px;
        background-color: rgb(237, 250, 255) !important;
    }

    .watermark {
        background: url(Images/mobi-watermark.svg);
        background-repeat: no-repeat;
        background-position: center;
    }

    .slip_payment_details tbody tr {
        border-bottom: none !important;
        display: flex;
        padding: 4px 0px;
    }

    .slip_payment_details tbody tr td {
        padding: 2px 0px;
        flex: 1;
        font-size: 12px;
        overflow-wrap: anywhere;
    }

    .content-viewreceipt {
        font-size: 12px !important;
    }

    .slip_option {
        flex: 0.7 !important;
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


    .action_div .select-wrapper input.select-dropdown {
        height: 1rem !important;
    }
</style>

<script>
    function openInfo(nameInBank, payoutId, customerName, accountNumber, amount, invoiceId) {
        document.getElementById("modalContainerCard").style.display = "block";


        console.log('name', name);
        console.log('PID', payoutId);
        console.log('cusName', customerName);
        console.log('accNo', accountNumber);
        console.log('Amount', amount);
        console.log('Invoice ID', invoiceId);
        document.getElementById("info-nameInBank").innerText = nameInBank;
        document.getElementById("info-payoutId").innerText = payoutId;
        document.getElementById("info-customerName").innerText = customerName;
        document.getElementById("info-accountNumber").innerText = accountNumber;
        document.getElementById("info-amount").innerText = amount;
        document.getElementById("info-invoiceId").value = invoiceId;
        document.getElementById("info-invoiceId-display").innerText = invoiceId;
    }

    function closeInfo() {
        var modal = document.getElementById("pending-modal-id");
        modal.style.display = "none";
    }
</script>

<style>
    #modal {
        display: none; /* Hidden by default */
        position: fixed;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        width: 400px; /* Set the width of the modal */
        background: #fff; /* White background */
        border-radius: 8px; /* Rounded corners */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); /* Subtle shadow */
        z-index: 1000; /* Ensure it's on top */
        max-height: 80vh; /* Limit height */
        overflow-y: auto; /* Scroll if content overflows */
    }
</style>


<script>

    // Function to navigate to a specific page
    function goToPage(pageNum) {
        document.location.href = '${pageContext.request.contextPath}/payoutDataUser/list-pendingPayoutTransactions?currentPage=' + pageNum;
    }

    $(document).ready(function () {
        var rowsPerPage = 20; // Updated to show 20 transactions per page
        var pageCount = ${paginationBean.querySize}; // Total number of pages
        var numbers = $('.pagination');

        // Number of page links to display
        var displayPages = 3;

        // Function to render pagination with ellipses
        function renderPagination(currentPage) {
            numbers.empty();

            // Create the previous button
            if (currentPage > 1) {
                numbers.append('<button class="prev" onclick="goToPage(' + (currentPage - 1) + ')"><span class="left-arrow"></span>Previous</button>');
            } else {
                numbers.append('<button class="prev disabled"><span class="left-arrow"></span>Previous</button>');
            }

            var halfDisplay = Math.floor(displayPages / 2);
            var startPage = Math.max(1, currentPage - halfDisplay);
            var endPage = Math.min(pageCount, currentPage + halfDisplay);

            if (currentPage - halfDisplay < 1) {
                endPage = Math.min(pageCount, endPage + (halfDisplay - currentPage + 1));
            }
            if (currentPage + halfDisplay > pageCount) {
                startPage = Math.max(1, startPage - (currentPage + halfDisplay - pageCount));
            }

            // Add first page and ellipsis if necessary
            if (startPage > 1) {
                numbers.append('<button class="page-link" onclick="goToPage(1)">1</button>');
                if (startPage > 2) {
                    numbers.append('<span class="ellipsis">...</span>');
                }
            }

            // Add page numbers
            for (var i = startPage; i <= endPage; i++) {
                if (i === currentPage) {
                    numbers.append('<button class="page-link active" onclick="goToPage(' + i + ')">' + i + '</button>');
                } else {
                    numbers.append('<button class="page-link" onclick="goToPage(' + i + ')">' + i + '</button>');
                }
            }

            // Add last page and ellipsis if necessary
            if (endPage < pageCount) {
                if (endPage < pageCount - 1) {
                    numbers.append('<span class="ellipsis">...</span>');
                }
                numbers.append('<button class="page-link" onclick="goToPage(' + pageCount + ')">' + pageCount + '</button>');
            }

            // Create the next button
            if (currentPage < pageCount) {
                numbers.append('<button class="next" onclick="goToPage(' + (currentPage + 1) + ')">Next<span class="right-arrow"></span></button>');
            } else {
                numbers.append('<button class="next disabled">Next<span class="right-arrow"></span></button>');
            }
        }


        // Get current page from URL
        function getCurrentPage() {
            var urlParams = new URLSearchParams(window.location.search);
            var page = parseInt(urlParams.get('currentPage'), 10);
            console.log('CURRENT PAGE FROM URL : ', page);
            return isNaN(page) ? 1 : page;
        }

        // Initialize the pagination
        var currentPage = ${currentPageNumber};
        renderPagination(currentPage);
    });
</script>


</body>
</html>