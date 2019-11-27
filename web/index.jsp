<%-- 
    Document   : index
    Created on : Nov 13, 2019, 6:48:41 PM
    Author     : trung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="container">
    <div id="prod_wrapper">
        <div id="panes">
            <c:forEach var="product" items="${newProducts}">
                <div>
                    <img src="${initParam.imgProductPath}${product.getImage()}" alt="">
                    <h5>${product.getName()}</h5>
                    <p>${product.getDescription()}</p>
                    <p style="text-align:right; margin-right: 16px">
                        <a href="#" class="button">More Info</a>
                        <a href="#" class="button">Buy Now</a>
                    </p>
                </div>
            </c:forEach>
        </div>
        <!-- END tab panes -->
        <br clear="all">
        <!-- navigator -->
        <div id="prod_nav">
            <ul>
                <c:set var="countProduct" scope="request" value="${1}" />
                <c:forEach var="product" items="${newProducts}">
                    <li>
                        <a href="#${countProduct}">
                            <img src="${initParam.imgProductPath}${product.getThumbImage()}" alt="" width="80px" height="80px">
                            <strong>${product.getName()}</strong> $ ${product.getPrice()}
                        </a>
                    </li>
                    <c:set var="countProduct" scope="request" value="${countProduct+1}" />
                </c:forEach>
            </ul>
        </div>
        <!-- close navigator -->
    </div>
                <div style="clear:both"></div>
                <div class="one-fourth">
                    <div class="heading_bg">
                        <h2>Mac</h2>
                    </div>
                    <img src="img/demo/4.jpg" width="217" height="200" alt="">
                </div>
                <!-- second column -->
                <div class="one-fourth">
                    <div class="heading_bg">
                        <h2>ipad</h2>
                    </div>
                    <img src="img/demo/6.jpg" width="217" height="200" alt="">
                </div>
                <!-- third column -->
                <div class="one-fourth">
                    <div class="heading_bg">
                        <h2>iPhone</h2>
                    </div>
                    <img src="img/demo/3.jpg" width="217" height="200" alt="">
                </div>
                <!-- fourth column -->
                <div class="one-fourth last">
                    <div class="heading_bg">
                        <h2>Accessories</h2>
                    </div>
                    <img src="img/demo/1.jpg" width="217" height="200" alt="">
                </div>
</div>