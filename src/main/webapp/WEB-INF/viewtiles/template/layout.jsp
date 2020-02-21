<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/font.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/alertify.core.css"/>
    <link rel="stylesheet" type="text/css" href="/resources/css/alertify.default.css"/>
    <link rel="stylesheet" type="text/css" href="/resources/css/alertify.bootstrap.css"/>
    <script type="text/javascript" src="/resources/js/jquery-3.3.1.min.js"></script>
    <!-- <script src="/webjars/jquery/2.1.3/dist/jquery.min.js"></script> -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.16.2/axios.min.js"></script>
    <script type="text/javascript" src="/resources/js/style.js"></script>
    <script src="/webjars/jquery-ui/1.12.1/jquery-ui.js"></script>
    <script src="/resources/js/common/common.js"></script>
    <script src="/webjars/vue/2.5.16/vue.js"></script>
    <script src="/resources/js/common/alertify.js"></script>
</head>

<body>
    <div class="wrapper" id="wrap">
        <tiles:insertAttribute name="menu"/>
        
        <tiles:insertAttribute name="header" />
        
        <tiles:insertAttribute name="body" />
    </div>
    
    <%-- <tiles:insertAttribute name="footer" /> --%>
</body>

</html>
