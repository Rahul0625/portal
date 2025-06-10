<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Approval Required</title>
    <link rel="icon" type="image/gif" sizes="16x16" href="/MobiversaAdmin/resourcesNew/img/newMobiMIcon.svg">
    <script type="text/javascript"  src="${pageContext.request.contextPath}/resourcesNew/js/urlHide.js"></script>

    <style>
        body {
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', sans-serif;
    background: url('resourcesNew1/assets/login_bg.png') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

.background {
    position: fixed;
    inset: 0;
    background: rgba(0, 0, 0, 0.5);
}

.approval-card {
    background: #fff;
    border-radius: 12px;
    padding: 30px 20px;
    width: 32%;
    z-index: 1;
    position: relative;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
}

.logo {
    font-size: 28px;
    font-weight: bold;
}

.logo .blue {
    color: #0055ff;
}

.logo .green {
    color: #28a745;
}

h2 {
    margin: 0 0 10px;
    color: #333;
    font-weight: 500;
}

.subtext {
    color: #555;
    font-size: 14px;
    margin: 0;
}

li{
    display: flex;
    justify-content: space-between;
    margin: 15px 0;
    color: #555555;
}
li strong, li span{
    width: 50%;
    font-size: 14px;
}
li strong{
     font-weight: 500;
}
.input-group label span{
    color: #555555;
    font: 200;
}
ul{
    padding: 0;
    list-style: none;
}

.input-group {
    margin-top: 15px;
    display: flex;
    flex-direction: column;
}

.input-group input {
    border: 0;
    border-bottom: 1px solid orange;
    padding: 8px;
    border-radius: 0px;
    font-size: 14px;
    margin-top: 5px;
}

.input-group input:focus-visible {
    outline: none;
}

.actions {
    display: flex;
    justify-content: flex-end;
    gap: 24px;
    margin-top: 20px;
}

button {
    padding: 10px 20px;
    border: none;
    font-weight: bold;
    border-radius: 6px;
    cursor: pointer;
}

.reject {
    border: 1.5px solid #ff4d4f;
    border-radius: 24px;
    width: fit-content;
    color: #ff4d4f;
    background-color: #ffffff;
}

.approve {
    border: 1.5px solid #51cb49;
    border-radius: 24px;
    width: fit-content;
    color: #ffffff;
    background-color: #51cb49;
}

/* alert popup */
.notification-modal {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.4);
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 1000;
  }

  .notification-box {
    background: #fff;
    border-radius: 10px;
    width: 40%;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    text-align: center;
    font-family: sans-serif;
    overflow: hidden;
  }

  .notification-header {
    background-color: #f6f6f6;
    padding: 15px;
    font-size: 18px;
    font-weight: bold;
    color: #00529B;
    border-bottom: 2px solid #f4c542;
  }

  .notification-content {
    padding: 20px;
  }

  .notification-icon {
    font-size: 24px;
    color: #007bff;
    margin-bottom: 10px;
  }

  .notification-content p {
    font-size: 14px;
    color: #333;
  }

  .notification-content a {
    color: #007bff;
    text-decoration: none;
    font-weight: 500;
  }

  .notification-footer {
    padding: 10px;
    background-color: #EFF8FF;
  }

  .close-btn {
    padding: 8px 20px;
    background-color: #00529B;
    border: none;
    border-radius: 20px;
    color: #fff;
    font-weight: bold;
    cursor: pointer;
  }
  .notification-modal.success .notification-box {
    border-left: 4px solid green;
  }

  .notification-modal.error .notification-box {
    border-left: 4px solid red;
  }

/* loader gif */

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

    </style>
</head>
<body>
    <div id="overlay" id="loading-gif">
		<div id="overlay_text">
			<img class="img-fluid"
				src="${pageContext.request.contextPath}/resourcesNew1/assets/loader.gif">
		</div>
	</div>

    <div class="background"></div>
    <div class="approval-card">
        <div class="logo">
            <img src="https://gomobi.io/assets/images/mobi-blue.svg" width="100" class="blue" alt="">
        </div>
        <hr>
        <c:choose>
            <c:when test="${isPending}">
                <h2>Approval Required</h2>
                <p class="subtext">A payout transaction requires your approval before it can be processed.</p>
            </c:when>
            <c:otherwise>
                <h2>Already Status Changed</h2>
            </c:otherwise>
        </c:choose>
        <div class="details">
            <ul>
                <li><strong>Transaction ID</strong><span>- ${dto.invoiceId}</span></li>
                <li><strong>Account No</strong><span>- ${dto.accountNumber}</span></li>
                <li><strong>Amount</strong><span>- ${dto.amount} MYR</span></li>
                <li><strong>Requested By</strong><span>- ${dto.requestedBy}</span></li>
                <li><strong>New Status</strong><span>- ${dto.status}</span></li>
                <li><strong>Reason</strong><span>- ${dto.failureReason  == null or dto.status.toLowerCase() == 'success' ? 'N/A' : dto.failureReason}</span></li>
                <li><strong>Date & Time</strong><span>- ${dto.date}, ${dto.time}</span></li>
            </ul>
        </div>
        <hr>
        <div class="">
            <c:choose>
             <c:when test="${isPending}">
                 <div>
                    <div class="input-group">
                        <label><span>Approver Email</span></label>
                        <input type="email" id="emailInput" placeholder="e.g. johndoe@gomobi.io" />
                    </div>
                </div>

                <div class="actions">
                    <button id="approveBtn" class="approve">Approve</button>
                </div>
            </c:when>
            <c:otherwise>
                <p>This transaction status is changed already.<br>
                    Kindly contact CS Team.</p>
            </c:otherwise>
        </c:choose>
        </div>
    </div>


    <!-- alert popup -->
    <div class="notification-modal" id="notificationModal" style="display: none;">
        <div class="notification-box">
          <div class="notification-header">Notification</div>
          <div class="notification-content">
            <div class="notification-icon">❕</div>
            <p id="popupMessage"></p>
          </div>
          <div class="notification-footer">
            <button class="close-btn" onclick="closeNotification()">Close</button>
          </div>
        </div>
      </div>

    <!-- alert popup -->
    <script type="text/javascript">
        const popUp = document.getElementById("notificationModal");

        function closeNotification() {
            document.getElementById("notificationModal").style.display = "none";
        }
        function openNotification() {
            document.getElementById("notificationModal").style.display = "flex";
        }

        function showPopup(message, type) {
            const popUp = document.getElementById("notificationModal");
            const messageElem = document.getElementById('popupMessage');

            // Remove any previous type classes
            popUp.className = "notification-modal";

            // Add the new type class (e.g., "success" or "error")
            if (type === 'success' || type === 'error') {
                popUp.classList.add(type);
            }

            messageElem.textContent = message;
            popUp.style.display = 'flex';
        }



        function disableApproveButton(flag) {
            const approveBtn = document.getElementById('approveBtn');
            if (approveBtn) {
                approveBtn.disabled = flag;
            }
        }


        approveBtn.addEventListener('click', function (event) {
            event.preventDefault();
            const email = document.getElementById('emailInput').value.trim();

            if (!isValidEmail(email)) {
                alert('Enter a valid email.');
                return;
            }

            disableApproveButton(true);

            const finalUrl = '${dto.approvalUrl}&email=' +  encodeURIComponent(email);

            fetch(finalUrl, { method: 'GET' })
                .then(response => {
                    switch (response.status) {
                        case 200:
                            showPopup('Transaction approved successfully. Notification sent to Ops & Audit log updated.', 'success');
                            break;
                        case 202:
                            showPopup('Status already changed from pending.', 'info');
                            break;
                        case 401:
                            showPopup('Enter a valid Authorized mail');
                            break;
                        case 500:
                            showPopup('Something happened internally. Try again later.', 'error');
                            break;
                        default:
                            showPopup('Unexpected server response.', 'error');
                    }
                })
                .catch(error => {
                    console.error('Error approving transaction:', error);
                    showPopup('An error occurred. Please try again.', 'error');
                    disableApproveButton(false);
                })
                .finally(() => {

                });
        });

        function isValidEmail(email) {
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailPattern.test(email);
    }
    </script>
</body>
</html>
