<%@ page language="java" contentType="text/html; charset=gb2312" pageEncoding="gb2312"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>

</head>
<body background="<%=basePath%>js/login.js">

<script type="text/javascript">
window.onload = function(){
        document.body.style.backgroundColor="#9393FF";
    }
		function search() {
			searchInfo = document.searchForm.searchInfo.value;
			if (searchInfo == "") {
				alert("��ѯ��Ų���ȷ�����������룡");
				document.searchForm.searchInfo.focus();
				return;
			} 

			document.searchForm.submit();
		}
	</script>
<div>

<form name="searchForm" method="post"action="<%=basePath %>servlet/SearchServlet">
		<table width="420px" align="center" cellpadding="10" border="1px"
			bordercolor="#000000" cellspacing="0px"
			style="border-collapse:collapse">
			<tr>
				<td>�������Ʒ���к�:</td>
				<td><input type="text" value="${Proudct.xuLieHao }" name="searchInfo" /></td>
				<td><input name="chaxun" type="button"  value="��ѯ" 	onclick="search()" />
			</tr>
		</table>		
	</form>
	</div><br>
	<div >
	<c:if test="${Proudct.xuLieHao != null }">
			<table width="400px" align="center" cellpadding="10" border="1px"
			bordercolor="#000000" cellspacing="0px"
			style="border-collapse:collapse">
			<caption>��Ʒ��Ϣ</caption>
				<tr>
					<td>��������:</td>
					<td>${Proudct.zhongZiMingCheng}</td>
				</tr>
				<tr>
					<td>����ʱ��:</td>
					<td>${Proudct.boZhongShiJian}</td>
				</tr>
				<tr>
					<td>�������:</td>
					<td>${Proudct.bozhongmianji}</td>
				</tr>
				<tr>
					<td>�¶�:</td>
					<td>${Proudct.wendu}</td>
				</tr>
				<tr>
					<td>ʩ��ʱ��:</td>
					<td>${Proudct.shifeishijian}</td>
				</tr>
				<tr>
					<td>��������:</td>
					<td>${Proudct.feiliaomingcheng}</td>
				</tr>
				<tr>
					<td>��������:</td>
					<td>${Proudct.feiliaoyongliang}</td>
				</tr>
				<tr>
					<td>ũҩ����:</td>
					<td>${Proudct.nongyaomingcheng}</td>
				</tr>
				<tr>
					<td>ũҩ����ʱ��:</td>
					<td>${Proudct.nongyaopensashijian}</td>
				</tr>
				<tr>
					<td>��ժ����:</td>
					<td>${Proudct.caizhaipici}</td>
				</tr>
				<tr>
					<td>����ʱ��:</td>
					<td>${Proudct.shengchanshijian}</td>
				</tr>
				<tr>
					<td>����:</td>
					<td>${Proudct.chandi}</td>
				</tr>
				
			</table>
	</c:if>
	</div>
</body>
</html>