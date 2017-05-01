<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
            <title>履歷表</title>
            <%request.setCharacterEncoding("UTF-8");%>
            <style media="screen">
                caption {
                    font-size: 72px;
                }
                th {
                    width: 100px;
                    text-align: center;
                    line-height: 28px;
                }
                td {
                    width: 200px;
                    text-align: center;
                }

            </style>
        </head>
        <body>
            <table border="1" align="center">
                <caption>履歷表</caption>
                <tr>
                    <th>姓名</th>
                    <td><%out.println(request.getParameter("username"));%></td>
                </tr>
                <tr>
                    <th>性別</th>
                    <td><%out.println(request.getParameter("sex"));%></td>
                </tr>

                <tr>
                    <th>出生年月日</th>
                    <td><%out.println(request.getParameter("birthday"));%></td>
                </tr>

                <tr>
                    <th >最高學歷</th>
                    <td><%out.println(request.getParameter("study"));%></td>
                </tr>

                <tr>
                    <th>血型</th>
                    <td><% String[] lan=request.getParameterValues("blood type"); for(int i=0;i<lan.length;i++){ out.println(lan[i] + " "); out.print("&nbsp;&nbsp;"); } %></td>
                </tr>

                <tr>

                    <th>興趣</th>
                    <td><% String hoby[]=request.getParameterValues("hobby"); for(int i=0;i<hoby.length;i++){ out.println(hoby[i] + " "); out.print("&nbsp;&nbsp;"); } %></td>
                </tr>
                <tr>
                    <th >自傳</th>
                    <td><%out.println(request.getParameter("note"));%></td>
                </tr>

            </body>
        </html>
