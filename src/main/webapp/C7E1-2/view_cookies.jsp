<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../styles/C7E1-2.css" type="text/css"/>
</head>
<body>

<section>
    <div class="content">
        <div class="welcome">
            <h1>Cookies</h1>
            <p>Here's a table with all of the cookies that this
                browser is sending to the current server.</p>

            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        </div>
        <div class="topform2">
            <tr>
                <th>Name</th>
                <th>Value</th>
            </tr>
            <c:forEach var="c" items="${cookie}">
                <tr>
                    <td>${c.value.name}</td>
                    <td>${c.value.value}</td>
                </tr>
            </c:forEach>
        </div>
        <div class="botform">
            <a href="?action=viewAlbums">
                <button2> View list of albums
                </button2>
            </a>

            <a href="download?action=deleteCookies">
                <button2> Delete all cookies
                </button2>
            </a>
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