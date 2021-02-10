<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/head.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
function n(itemUid, se_id){
	var delConfirm = confirm('해당 상품을 찜 목록에서 제거하시겠습니까?');
	   if (delConfirm) {
	      alert('찜 목록에서 상품이 제거됩니다.');
	      location.href="/jjimCancel.do?itemUid="+itemUid+"&id="+se_id+"&jjim=0&flag=1";
	   }
	   else {
	      alert('취소');
	   }
}
</script>
</head>
<body>
<div style="height:150px;"></div>
total : ${count }
<table border=1 width=100% height=700>
<tr>
		<td colspan=7 align=center style="font-weight:bold; background-color:lightgray;">상품리스트</td>
	</tr>
	<tr>
		<td align="center" style="font-weight:bold">상품명</td>
		<td align="center" style="font-weight:bold">상품썸네일</td>
		<td align="center" style="font-weight:bold">상품가격</td>
		<td align="center" style="font-weight:bold">찜</td>
	</tr>
	
<c:choose>
<c:when test="${count == 0 }">
<tr>
	<td colspan=4 align="center">찜한 상품이 없습니다.</td>
</tr>		
</c:when>
<c:otherwise>
<c:forEach var="list" items="${v3}">
	<tr>
		<td>${list.itemName }</td>
		<td><img src="/upload/${list.itemFile_s}"></td>
		<td>${list.itemPrice }</td>
		<td align=center><button onclick="n('${list.itemUid}','<%=session_id %>')">❤️</button></td>
	</tr>
</c:forEach>
</c:otherwise>
</c:choose>
</table>
</body>
</html>
<%@ include file="/include/foot.jsp"%>