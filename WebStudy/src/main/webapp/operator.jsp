<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form method="POST" action="operator_bk.jsp">
      <table>
         <tr>
            <td>value1:</td>
            <td><input type=number name=val1 id=val1></td>
         </tr>
         <tr>
            <td>value2:</td>
            <td><input type=number name=val2 id=val2></td>
         </tr>
         <tr>
            <td>operator</td>
            <td><select size=4 name=oper style="width:120px">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
            </select></td>
         </tr>
         <tr>
            <td colspan=2 align=center>
            <input type=submit value="전송">&nbsp;&nbsp;<input type=reset value="Reset">
            </td>
         </tr>
      </table>
   </form>

</body>
</html>