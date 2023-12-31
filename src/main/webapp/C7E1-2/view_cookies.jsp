<html class="hydrated"><head>
    <meta charset="utf-8"><style data-styles="">ion-icon{visibility:hidden}.hydrated{visibility:inherit}</style>
    <title>View Cookies</title>
    <link rel="stylesheet" href="../styles/cookies.css">
</head>
<body>
<header>
    <meta charset="utf-8">
</header>
<section>
    <h1>Cookies</h1>
    <div class="content">
        <div class="welcome">
            <p>Here's a table with all of the cookies that this
                browser is sending to the current server.</p><br>
            <div class="form">
                <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <table>
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
                </table>

            </div>
        </div>
        <div class="botform">
            <a href="download?action=viewAlbums">
                <button2> View list of albums
                </button2>
            </a>
            <a href="download?action=deleteCookies">
                <button2> Delete all persistent cookie
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