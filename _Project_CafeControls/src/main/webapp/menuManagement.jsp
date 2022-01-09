<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div id="dgMenu" title="메뉴관리" style="display:none;">
        <table>
            <tr>
                <td>
                    <select id=selMenu1 size=10  style="font-size: 14px;"></select>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>메뉴코드</td>
                            <td><input type=text id=_menuname style="width: 100px;"></td>
                        </tr>
                        <tr>
                            <td>메뉴명</td>
                            <td><input type=text id=_menuname style="width: 100px;"></td>
                        </tr>
                        <tr>
                            <td>단가(가격)</td>
                            <td><input type=number id=_price min=1 style="width: 100px;">원</td>
                        </tr>
                        <tr>
                            <td>메뉴 카테고리</td>
                            <td><select id="selMenu"> </select></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <button id=btnUpdate>메뉴수정</button>
                                <button id="btnDelete">메뉴삭제</button>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>