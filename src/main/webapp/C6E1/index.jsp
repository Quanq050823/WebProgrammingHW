<%--<%@ include file="/includes/header.html" %>--%>
<!DOCTYPE html>
<a href="../index.html">
</a>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../styles/C6E1.css" type="text/css"/>
</head>
<body>
<section>
    <div class="content">
        <div class="welcome" style="justify-content: center">
            <h1>Join our <span>email list</span></h1>
            <p>To join our email list, enter your name and
                email address below.</p>
            <c:if test="${message != null}">
                <p style="border: #1c1e28; text-align: center; color: #ea1717"><i>${message}</i></p>
            </c:if>
        </div><br>
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
                    <input type="submit" value="Join Now">
                </form>
            </div>
        </div>
    </div>
</section>

<section>
    <div class="footer">
        <div class="footer-text">
            <p>&copy; Copyright ${currentYear} Mike Murach &amp; Associates</p>
        </div>
        <div class="footer-iconTop">
            <a href="../index.html">Back to Home</a>
        </div>
    </div>
</section>
</body>
</html>

<%--<%@ include file="/includes/footer.jsp" %>--%>