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
            table tr th{
                width:100px;
                border:1px solid black;
                height:30px;
                color:red;
                background: aquamarine;
            }
            table tr td{
             width:100px;
                border:1px solid black;
                height:20px;
                color:#000066;
                background:azure;   
            }
        </style>
    </head>
    <body bgcolor="#ccbbff">
        <div id="main">
            <p style="float:left;padding-top:0px;color:white;font-weight: bold;font-size:25px;">Strong Recovery in excess of Reports</p>
            <ul>
               <li><a href="CS_H.jsp">Home</a></li>
               <li><a href="V_U.jsp">View User</a></li>
                <li><a href="V_O.jsp">View Owner</a></li>
                <li><a href="V_U_F.jsp">View Uploaded Files</a></li>
                
                <li><a href="Login.jsp">Logout</a></li>
               
            </ul>
        </div>
        <div id="right">
            <CENTER>
            
           
            
           
            <table>
                <tR><h3>All Uploaded Files Details</h3></tr>
            <tr>
                <th>File ID</th>
                <th>File Name</th>
                
            </tr>
            <%
                try{
                    String query="select * from file";
                    ResultSet rs=Queries.getExecuteQuery(query);
                    while(rs.next()){%>
                    <tr>
                        <td><%=rs.getString("fid")%></td>
                        <td><%=rs.getString("filename")%></td>
                                           </tr>   
                    <%}
                }catch(Exception e){
                    out.println(e);
                }
            %>
            </table>
             </CENTER>
        </div>
        <div id="title"><p style="float:left;padding-top:0px;color:white;font-weight: bold;font-size:25px;">scrambled by Features in Distributed Computing</p></div>
        <div id="image"></div>
            
        
    </body>
</html>
