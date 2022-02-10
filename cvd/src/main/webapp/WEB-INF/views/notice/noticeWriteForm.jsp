<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeWriteForm.jsp</title>
</head>
<body>
	<div class="hero_area">
     <section class="department_section layout_padding">
    <div class="department_container">
      <div class="container ">
        <div class="heading_container heading_center">
          <h2>
            공지사항 등록하기
          </h2>
          <p>
           공지에 필요한 자료를 꼼꼼하게 검토 한 후 입력 해주시기바랍니다<br>
          </p>
        </div>
        <div align="center">
		<form id="frm" action="noticeWrite.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="100">작성일자</th>
						<td width="150"><input type="date" id="noticeDate" name="noticeDate"></td>
						<script>
                              document.getElementById('noticeDate').value = new Date().toISOString().substring(0, 10);
                        </script>
					</tr>
					<tr>
						<th>제 목</th>
						<td colspan="3"><input type="text" size="59" id="noticeTitle" name="noticeTitle"></td>
					</tr>
					<tr>
						<th>내 용</th>
						<td colspan="3"><textarea rows="10" cols="56" id="noticeContent" name="noticeContent"></textarea></td>
					</tr>
				</table>
			</div><br>
			<input type="submit" value="등록">&nbsp;&nbsp;
			<input type="reset" value="취소">&nbsp;&nbsp;
			<input type="button" value="목록" onclick="location.href='noticeList.do'"><br>
			<br>
		</form>
		</div>
	</div>
</div>
</body>
</html>