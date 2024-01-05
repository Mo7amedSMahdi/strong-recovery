<%
String fname=request.getParameter("fname");
response.sendRedirect("Download?"+fname+"");
%>