<%--<%@ include file="/includes/header.html" %>--%>
<!DOCTYPE html>
<a href="../index.html">
</a>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../styles/test.css" type="text/css"/>
</head>
<body>

<section class="1">
    <div>
        <div class="welcome">
            <h1>Join our <span>email list</span></h1>
            <p>To join our email list, enter your name and
                email address below.</p>
            <c:if test="${message != null}">
                <p><i>${message}</i></p>
            </c:if>
        </div>
        <div class="container">
            <div class="topform">
                <form action="emailList" method="post">
                    <input type="hidden" name="action" value="add">
                    <div class="input-box">
                        <!--          <label class="pad_top">Email:</label>-->
                        <input placeholder="Email" type="email" name="email" value="${user.email}"><br>
                    </div>
                    <div class="input-box">
                        <!--          <label class="pad_top">First Name:</label>-->
                        <input placeholder="First Name" type="text" name="firstName" value="${user.firstName}"><br>
                    </div>
                    <div class="input-box">
                        <!--          <label class="pad_top">Last Name:</label>-->
                        <input placeholder="Last Name" type="text" name="lastName" value="${user.lastName}"><br>
                    </div>
                    <input type="submit" value="Join Now" class="margin_left">
                </form>
            </div>
        </div>
    </div>
</section>

<section class="2">
    <div class="footer">
        <div class="footer-text">
            <p>CopyRight &copy; 2030 by DucQuang | All Rights Reserved.</p>
        </div>
        <div class="footer-iconTop">
            <a href="../index.html">Back to Home</a>
        </div>
    </div>
</section>

</body>
</html>

<%--<%@ include file="/includes/footer.jsp" %>--%>