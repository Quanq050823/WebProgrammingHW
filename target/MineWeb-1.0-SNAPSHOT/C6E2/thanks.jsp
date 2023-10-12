<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="../styles/C6E1.css" type="text/css"/>
</head>

<body>
<h1>Thanks for joining our email list</h1>
<p>Here is the information that you entered:</p>

<label>Email:</label>
<span>${user.email}</span><br>
<label>First Name:</label>
<span>${user.firstName}</span><br>
<label>Last Name:</label>
<span>${user.lastName}</span><br>
<label>Date of Birth:</label>
<span>${user.dateofBirth}</span><br>

<label>Heard us about: </label>
<span>${user.hearabout}</span><br>

<p>To enter another email address, click on the Back
    button in your browser or the Return button shown
    below.</p>

<form action="emailList" method="get">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
</form><br>
<a href="../index.html">
    <input type="submit" value="Back to Home">
</a>
</body>
</html>

