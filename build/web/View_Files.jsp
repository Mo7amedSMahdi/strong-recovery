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
               <li><a href="DA_H.jsp">Home</a></li>
               <li><a href="File_Upload.jsp">File Upload</a></li>
                <li><a href="View_Files.jsp">View Files</a></li>                
                <li><a href="Login.jsp">Logout</a></li>
               
            </ul>
        </div>
        <div id="right">
            <CENTER>
            
            <%String email=(String)session.getAttribute("email");
            String id=(String)session.getAttribute("id");
            System.out.println("id:"+id);
            String query="select * from file where owner='"+id+"'";
            ResultSet r=Queries.getExecuteQuery(query);
            
            
            %>
            <H3><font color="#28a428"><%=email%></font></H3>
            </CENTER>
     
            <table>
                <h2>Uploaded Files</h2>
                <tr><th>File ID</tH><th>File Name</tH><th>File Key</tH>
                </tr>
              <%while(r.next()){
                  
                     String fileid=r.getString("fid");
                
      
                     String filename=r.getString("filename");
                 String fkey =r.getString("fkey");
            
            %>
            <tr><td><%=fileid%></tD>
                <td><%=filename%></td>
                
               
             <td><%=fkey%></td></tr>
               <%}%>
            </table>
            </form>
        </div>
        <div id="title"><p style="float:left;padding-top:0px;color:white;font-weight: bold;font-size:25px;">scrambled by Features in Distributed Computing</p></div>
        <div id="image"></div>
            
        
    </body>
</html>
