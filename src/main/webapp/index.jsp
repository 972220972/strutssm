<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Struts 2.5.10 test</title>
    <style>
        input{padding:5px;margin:5px;}
    </style>
</head>
<body>
<a href="show">显示学生信息</a>
<h3>jstl-core</h3>
<c:forEach begin="1" end="10" step="1" var="i">
    <h5>jstl-foreach-${i}</h5>
</c:forEach>
<hr>
<h3>struts-action操作</h3>
<a href="test">test</a>
<a href="show">show</a>
<hr>
<h3>struts-tag</h3>
<s:iterator begin="1" end="10" step="2">
    <s:property/><br>
</s:iterator>
</body>
</html>
