<%@page import="java.sql.ResultSet"%>
<%@page import="com.query.Queries"%>
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
            table {
                border:1px solid black;
            }
            table tr th{
                border:1px solid black;
                height:50px;
                width:100px;
              background: lightblue;
              color:orange;
            }
            table tr td{
               border:1px solid black;
                height:35px;
                width:100px; 
                background: #ccffff;
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
            <%String email=(String)session.getAttribute("email");
            String id=(String)session.getAttribute("id");
            %>
            <H3><font color="#28a428"><%=email%></font></H3>
          
            <table>
                <tr><th>User EMail</th>
                <th>User ID</th>
                <th>FileName</th>
                <th>File Key</th>
                <th>Status</th>
                </tr>
                
                    
                    <%
                    String query="select * from request where requestid='"+id+"'";
                    ResultSet r=Queries.getExecuteQuery(query);
                     while(r.next()){
                    String status=r.getString("status");%>
                <tr>  <td><%=email%></td>
                    <td><%=id%></td>
                     <td><%=r.getString("filename")%></td>
                     <td><%=r.getString("commonkey")%></td> 
                     <td><%=status%></td> </tr>
                     <%}
                    %>
                
        </table>
           
            </CENTER>
        </div>
        <div id="title"><p style="float:left;padding-top:0px;color:white;font-weight: bold;font-size:25px;">scrambled by Features in Distributed Computing</p></div>
        <div id="image"></div>
        
        
    </body>
</html>
