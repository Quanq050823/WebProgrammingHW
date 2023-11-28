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
        <h1>CD <span>LIST</span></h1>
    </section>
</header>
<div class="topform">
    <table>
        <tr>
            <th style="background-color: #b7eded">Description</th>
            <th class="right" style="background-color: #b7eded">Price</th>
            <th style="background-color: #b7eded">&nbsp;</th>
        </tr>
        <tr>
            <td>86 (the band) - True Life Songs and Pictures</td>
            <td class="right">$14.95</td>
            <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="8601">
                <button class="c-button c-button--gooey" type="submit" value="Add To Cart"> Add to Cart
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
            </form><!--<a href="cart?productCode=8601">Add To Cart</a>--></td>
        </tr>
        <tr>
            <td>Paddlefoot - The first CD</td>
            <td class="right">$12.95</td>
            <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="pf01">
                <button class="c-button c-button--gooey" type="submit" value="Add To Cart"> Add to Cart
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
            </form></td>
        </tr>
        <tr>
            <td>Paddlefoot - The second CD</td>
            <td class="right">$14.95</td>
            <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="pf02">
                <button class="c-button c-button--gooey" type="submit" value="Add To Cart"> Add to Cart
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
            </form></td>
        </tr>
        <tr>
            <td>Joe Rut - Genuine Wood Grained Finish</td>
            <td class="right">$14.95</td>
            <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="jr01">
                <button class="c-button c-button--gooey" type="submit" value="Add To Cart"> Add to Cart
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
            </form></td>
        </tr>
    </table>
</div>

</body><br>
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