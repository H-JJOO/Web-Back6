<%@ page import="com.koreait.board.BoardVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BoardVO vo = (BoardVO)request.getAttribute("data");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글수정</title>
</head>
<body>
<form action="/write" method="post" id="frm">
    <h1>글수정</h1>
    <div><input type="text" name="title" placeholder="제목" value="<%=vo.getTitle()%>"></div>
    <div><textarea name="ctnt" placeholder="내용"><%=vo.getCtnt()%></textarea></div>
    <div><input type="text" name="writer" placeholder="작성자" value="<%=vo.getWriter()%>"></div>
    <div>
        <input type="submit" value="저장">
        <input type="reset" value="초기화">
        <input type="button" value="모두 삭제" onclick="removeAll()">
    </div>
</form>
<script>
    function removeAll() {
        var frm = document.querySelector('#frm');
        frm.title.value = '';
        frm.ctnt.value = '';
        frm.writer.value = '';
    }
</script>
</body>
</html>
