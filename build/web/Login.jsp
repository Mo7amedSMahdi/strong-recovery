<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
 <title>Login Page</title>
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
                
                color: red;    
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
             background: url(images/clouds.gif);
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
                 <li><a href="index.html">Home</a></li>
               <li><a href="Login.jsp">Data_User</a></li>
                <li><a href="Login.jsp">Data_Owner</a></li>
                <li><a href="Login.jsp">Certificate Authority</a></li>
                
                <li><a href="Login.jsp">Cloud Server</a></li>
               
            </ul>
        </div>
        <div id="right">
            <center>
            <h1>Login Here</h1>
            <%String msg=request.getParameter("msg");
            if(msg!=null){
                if(msg.equals("success")){
                    %>
                    <font color="green">Registration Successful You Can Login Now....</font>
                    <%
                }else{%>
                <script type="text/javascript">
                    window.alert("Not Authorized Person");
                    </script>
<%}
}%>
            <form action="Login" method="post">
            <table>
                            <tr><td><select name="utype" style="width:355px;height:35px;border-radius:5px;">
                                        <option>--select--</option>
                                        <option value="user">Data User</option>
                                         <option value="owner">Data Owner</option>
                                          <option value="ca">CA</option>
                                         <option value="cloudserver">Cloud Server</option>
                                         
                        </select></td></tr>
                <tr></tr>
                <tr><td><input type="text" name="uname" placeholder="UserName" required=""></td></tr>
                <tr></tr>
                <tr><td><input type="password" name="pwd" placeholder="Password" required=""></td></tr>
                <tr></tr>
               
                <tr><td> Don't Have An Account ?<a href="index.html">Click Here<image src="images/gif-new-14.gif" width="30" height="30"/></a></td></tr>
                <tr></tr>
                <tr><td><input type="submit" value="Login"></td></tr>
                <tr></tr>
                <tr><td><u><font color="blue">NOTE:</font></u></td></tr>
                <tr><td><font color="red">The above link can be useful for only the End User and Data Owner Only..</font></td></tr>
                <tr><td><font color="red">Other than that it is not useful for any one....</font></td></tr>
            </table>
            </form>
            </center>
        </div>
        <div id="title"><p style="float:left;padding-top:0px;color:white;font-weight: bold;font-size:25px;">scrambled 
by Features in Distributed Computing</p></div>
        <div id="image"></div>
            
        
    </body>
</html>
