<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	String ordNo = (String) request.getAttribute("ordNo");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
function closeWin(time) {
	setTimeout("window.close()", time); //1000 �� 1�ʸ� �ǹ��մϴ�.
	}
</script>
</head>
<body onLoad="closeWin('3000')">
	�ֹ���ȣ <b><%=ordNo %></b> ó�� �Ϸ�
	<br>
	3���� �����ϴ�.
</body>
</html>