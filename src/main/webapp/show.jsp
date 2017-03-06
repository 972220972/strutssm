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
<h3>显示学生数据</h3>
<s:iterator value="stu" var="s">
    <s:property value="name"/>-----<a href="del.action?id=${s.id}" onclick="return confirm('是否要删除:${s.name}?')">删除</a><br>
</s:iterator>
</body>
</html>