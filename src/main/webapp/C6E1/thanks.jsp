<%--<%@ include file="/includes/footer.jsp" %>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../styles/C6E1.css" type="text/css"/>
</head>
<body>
<section>
    <div class="content">
        <div class="welcome">
            <h1>Thanks for joining our <span>email list</span></h1>
            <p>Here is the information that you entered:</p><br>
        </div>
        <div class="container">
            <div class="form">
                <div class="output">
                    <label>Email:</label>
                    <span>${user.email}</span><br>
                </div>
                <div class="output">
                    <label>First Name:</label>
                    <span>${user.firstName}</span><br>
                </div>
                <div class="output">
                    <label>Last Name:</label>
                    <span>${user.lastName}</span><br>
                </div>
            </div><br>
            <p>"To enter another email address, click on the Back
                button in your browser or the <span>Return button</span> shown
                below."</p>
            <form action="" method="post">
                <input type="hidden" name="action" value="join">
                <input type="submit" value="Return">
            </form>
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
<script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
</html>
<%--<%@ include file="/includes/header.html" %>--%>