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
            System.out.println("file_Upload.jsp id:"+id);
            String query="select * from gnkeys where userid='"+id+"'";
            ResultSet rs=Queries.getExecuteQuery(query);
            
            
            %>
            <H3><font color="#28a428"><%=email%></font></H3>
            </CENTER>
            <form action="./UploadFile" method="post" enctype="multipart/form-data">
            <table>
                <h2>Upload File with Access Policy</h2>
                <%String msg=request.getParameter("msg");
                if(msg!=null){
                if(msg.equals("uploaded success")){%>
                <h4><font color="green"><%=msg%></font></h4>            
<%}else{%>
<h4><font color="red"><%=msg%></font></h4> 
<%}
}%>
              <%while(rs.next()){
                     String pars=rs.getString("publickey");
                session.setAttribute("pars",pars);
                 String query1="select * from reg where id='"+id+"'";
                 ResultSet r=Queries.getExecuteQuery(query1);
                 while(r.next()){
                     String name=r.getString("username");
                 String branch =r.getString("branch");
                String department =r.getString("department");
                String subdept=r.getString("subdepartment");
             String job=r.getString("jobrole");
             
             session.setAttribute("owner",id);
             session.setAttribute("branch",branch);
             session.setAttribute("department",department);
             session.setAttribute("subdept",subdept);
             session.setAttribute("job",job);
            %>
                <tr><td>Owner ID</td><td><input type="text"  value="<%=id%>" readonly></td></tr>
                <tr><td>Owner ParsKey</td><td><input type="text" value="<%=pars%>" readonly></td></tr>
                
                <tr><th><u>Access Policy</u>:</th></tr>
                <tr><td>Branch</td><td><input type="text"  value="<%=branch%>"  readonly=""></td></tr>
                <tr><td>Department</td><td><input type="text" value="<%=department%>"  readonly=""></td></tr>
                <tr><td>Sub Department</td><td><input type="text"  value="<%=subdept%>"  readonly=""></td></tr>
                <tr><td>Job</td><td><input type="text"  value="<%=job%>"  readonly=""></td></tr>
                <%}

}%>
                <tr><td>Upload File</td><td><input type="file" name="file"  required=""></td></tr>
                <tr><td></td><td><input type="submit" value="Upload"></td></tr>
            </table>
            </form>
        </div>
        <div id="title"><p style="float:left;padding-top:0px;color:white;font-weight: bold;font-size:25px;">scrambled by Features in Distributed Computing</p></div>
        <div id="image"></div>
            
        
    </body>
</html>
