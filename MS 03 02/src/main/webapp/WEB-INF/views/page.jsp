<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Music Store - ${title}</title>

    <!-- Bootstrap core CSS -->
    <link href="https://fonts.googleapis.com/css?family=Cairo&display=swap" rel="stylesheet">
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    <link href="${css}/bootstrap-grid.css" rel="stylesheet">
    <link href="${css}/bootstrap-reboot.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

<div class="wrapper">

<!-- Navigation -->
<%@include file="./shared/navbar.jsp"%>

<!-- Page Content -->
<div class="content">

    <c:if test="${userClickHome == true}">
        <%@include file="home.jsp"%>
    </c:if>
    <!-- User click ABOUT -->
    <c:if test="${userClickAbout == true}">
        <%@include file="about.jsp"%>
    </c:if>
    <!-- User click CONTACT -->
    <c:if test="${userClickContact == true}">
        <%@include file="contact.jsp"%>
    </c:if>

</div>

<!-- Footer -->
<%@include file="./shared/footer.jsp"%>

<!-- Bootstrap core JavaScript -->
<script src="${js}/jquery.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="${js}/bootstrap.js"></script>
<script src="${js}/bootstrap.bundle.js"></script>

    <script src="${js}/myapp.js"></script>

</div>

</body>

</html>