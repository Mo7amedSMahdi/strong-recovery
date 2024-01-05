
<%@page import="com.query.Queries"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Strong Recovery in excess of Reports scrambled by Features in Distributed Computing</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            #main{
                width:100%;
                height:90px;
                border:1px solid #19194d;
                background:#000066; 
            }
            ul{
                float:right;
            }
            ul li {
             float:left;
             padding:15px;
             color:white;
             list-style: none;
            }
            ul li a{
                color:white;
                text-decoration: none;
                
            }
            a:hover{
                
                color: green;    
            }
            #right{
                width:800px;
                height:600px;
                border:1px solid black;
                float:right;
                border:none;
            }
            #title{
               width:530px;
               height:100px;
               border:1px solid black;
               border:none;
            }
            #image{
             width:530px;
             height:500px;
             border:1px solid black;
          
             border:none;
             background: url(images/giphy.gif);
             background-size: 530px 500px;
            }
            input {
                width:350px;
                height:30px;
                border-radius:5px;
            }
        </style>
    </head>
    <body bgcolor="#ccbbff">
        <div id="main">
            <p style="float:left;padding-top:0px;color:white;font-weight: bold;font-size:25px;">Strong Recovery in excess of Reports</p>
            <ul>
               <li><a href="U_H.jsp">Home</a></li>
               <li><a href="S_File.jsp">Search File</a></li>
                <li><a href="R_Status.jsp">Request Status</a></li>                
                <li><a href="Downoad.jsp">Download</a></li>
                <li><a href="Login.jsp">Logout</a></li>
               
            </ul>
        </div>
        <div id="right">
            <CENTER>
               
            <form action="F_Request.jsp">
            <table>
                <tr><h5>Keyword File Details</h5></tr>
            <%String email=(String)session.getAttribute("email");
            String id=(String)session.getAttribute("id");
            %>
            <%
String keyword=request.getParameter("keyword");
String kvalue=request.getParameter("kvalue");

String query="select filename,data,fkey from file limit "+kvalue+"";
 ResultSet r=Queries.getExecuteQuery(query);
 String fkey=null;
 while(r.next()){
    fkey=r.getString("fkey");
   String data=r.getString("data");
   if(data.contains(keyword)){
       String filename1=r.getString("filename");
     
       
    %>
            <tr><td><input type="checkbox" name="fname" value="<%=filename1%>"><%=filename1%></td></tr>
    <%
   }
 }
%>
            
           
            <tR><td><input type="hidden" name="fkey" value="<%=fkey%>"</td></tr>
            <tr><td></td><td><input type="submit" value="Send Request" style="width:100px;"></tD></tr>
        </table>
            </form>
            </CENTER>
        </div>
        <div id="title"><p style="float:left;padding-top:0px;color:white;font-weight: bold;font-size:25px;">scrambled by Features in Distributed Computing</p></div>
        <div id="image"></div>
        
        
    </body>
</html>
