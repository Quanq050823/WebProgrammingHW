<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Murach's Java Servlets and JSP</title>
  <link rel="stylesheet" href="../styles/C7E3.css" type="text/css"/>
</head>
<body>
<header>
  <section>
    <h1>Your <span>Cart</span></h1>
  </section>
</header>

<div class="topform">
  <table>
    <tr>
      <th style="background-color: #b7eded">Quantity</th>
      <th style="background-color: #b7eded">Description</th>
      <th style="background-color: #b7eded">Price</th>
      <th style="background-color: #b7eded">Amount</th>
      <th style="background-color: #b7eded"></th>
    </tr>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:forEach var="item" items="${cart.items}">
      <tr>
        <td>
          <form action="cart" method="get" style="width: 100px">
            <input type="hidden" name="productCode" value="${item.product.code}">
            <input type=text name="quantity" value="${item.quantity}" id="quantity">
            <input type="submit" value="Update">
          </form>
        </td>
        <td>${item.product.description}</td>
        <td>$${item.product.price}</td>
          <td>$${item.total}</td>
        <td>
          <a href="cart?productCode=${item.product.code}&amp;quantity=0" type="hidden"></a>
          <form action="" method="post">
            <input type="hidden" name="productCode"
                   value="${item.product.code}">
            <input type="hidden" name="quantity"
                   value="0">
            <button class="c-button c-button--gooey" type="submit" value="Add To Cart" type="submit" value="Remove Item"> Remove Item
              <div class="c-button__blobs">
                <div></div>
                <div></div>
                <div></div>
              </div>
            </button>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" style="display: block; height: 0; width: 0;">
              <defs>
                <filter id="goo">
                  <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur"></feGaussianBlur>
                  <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo"></feColorMatrix>
                  <feBlend in="SourceGraphic" in2="goo"></feBlend>
                </filter>
              </defs>
            </svg>
          </form>
        </td>
      </tr>
      <c:if test="${empty item}">
        <tr>
          <td colspan="6"><p style="color: #666666">There are no order.</p></td>
        </tr>
      </c:if>
    </c:forEach>
  </table>
</div>

<div class="botform">
  <p style="font-size: larger; color: blanchedalmond"><b>To change the quantity</b>, enter the new quantity
    and click on the Update button.</p>

  <form action="" method="post">
    <input type="hidden" name="action" value="shop">
    <button class="c-button c-button--gooey" type="submit" value="Add To Cart" type="submit" value="Continue Shopping" > Continue Shopping
      <div class="c-button__blobs">
        <div></div>
        <div></div>
        <div></div>
      </div>
    </button>
    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" style="display: block; height: 0; width: 0;">
      <defs>
        <filter id="goo">
          <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur"></feGaussianBlur>
          <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo"></feColorMatrix>
          <feBlend in="SourceGraphic" in2="goo"></feBlend>
        </filter>
      </defs>
    </svg>
  </form><br>

  <form action="checkout.jsp" method="post">
    <input type="hidden" name="action" value="checkout">
    <button class="c-button c-button--gooey" type="submit" value="Add To Cart" type="submit" value="Checkout" > Checkout
      <div class="c-button__blobs">
        <div></div>
        <div></div>
        <div></div>
      </div>
    </button>
    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" style="display: block; height: 0; width: 0;">
      <defs>
        <filter id="goo">
          <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur"></feGaussianBlur>
          <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo"></feColorMatrix>
          <feBlend in="SourceGraphic" in2="goo"></feBlend>
        </filter>
      </defs>
    </svg>
  </form>
</div>
</body>
<br>
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
</html>