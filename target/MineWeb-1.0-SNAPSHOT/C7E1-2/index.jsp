<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../styles/C7E1-2.css " type="text/css"/>
</head>
<body>
<section id="content">
<header>
    <section>
        <h1>List of <span>Albums</span></h1>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:if test = "${cookie.userEmail.value != null}">
            <p style="color: #ffffe1">Welcome back: <span style="font-style: italic; font-size: 20px; color: #ffffe1">${cookie.userEmail.value}</span></p>
        </c:if>
    </section>
</header>

<div class="album_list">
    <div class="album">
        <a href="download?action=checkUser&amp;productCode=8601">
            <img class="album_img" alt="Life Songs and Pictures" src="https://cdn.dribbble.com/userupload/10748479/file/original-26a793eb1dca70098abc91dafa43dff9.jpg?resize=752x">
            <p class="album_title">True Life Songs and Pictures - 86 (the band)</p>
        </a>
    </div>
    <div class="album">
        <a href="download?action=checkUser&amp;productCode=pf01">
            <img class="album_img" alt="The First CD " src="https://cdn.dribbble.com/userupload/10747543/file/original-9dd04050f868fa84c6b8d117aaa007fd.png?resize=752x">
            <p class="album_title">The First CD - Paddlefoot </p>
        </a>
    </div>
    <div class="album">
        <a href="download?action=checkUser&amp;productCode=pf02">
            <img class="album_img" alt="The First CD - Paddlefoot" src="https://cdn.dribbble.com/userupload/10772183/file/original-ae93ba620c909335e6e902956aa3d1df.png?resize=752x">
            <p class="album_title">The First CD - Paddlefoot</p>
        </a>
    </div>
    <div class="album">
        <a href="download?action=checkUser&amp;productCode=jr01">
            <img class="album_img" alt="LGenuine Wood Grained Finish - Joe Rut" src="https://cdn.dribbble.com/userupload/10771965/file/original-51f4ecda6a15c97f2450345f860627d1.png?resize=752x">
            <p class="album_title">Genuine Wood Grained Finish - Joe Rut</p>
        </a>
    </div>
</div>
</section>
<section>
    <div class="footer">
        <div class="footer-text">
            <p>&copy; Copyright ${currentYear} Duc Quang</p>
        </div>
        <div class="footer-iconTop">
            <a href="../index.html">Back to Home</a>
        </div>
    </div>
</section>
</body>
</html>