<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./CreateTeses" method="POST">
		<input name="confId" type="hidden" value="${param.confId}" />
		<input name="teses"/>
		<input name="user" type="hidden" value="<%=session.getAttribute("userId")%>" />
        <input type="submit" value="Відпрвити тези" />     
    </form>    
</body>
</html>