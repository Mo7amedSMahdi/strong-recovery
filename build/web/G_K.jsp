<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="java.security.PublicKey"%>
<%@page import="java.security.Key"%>
<%@page import="java.security.KeyPair"%>
<%@page import="java.security.KeyPairGenerator"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.query.Queries"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64" %>
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
             background: url(images/welcome.gif);
             background-size: 530px 500px;
            }
            input {
                width:350px;
                height:30px;
                border-radius:5px;
            }
            table tr th{
                background:darksalmon;
                color:aquamarine;
            }
            table tr td{
                background:azure;
                
            }
        </style>
    </head>
    <body bgcolor="#ccbbff">
        <div id="main">
            <p style="float:left;padding-top:0px;color:white;font-weight: bold;font-size:25px;">Strong Recovery in excess of Reports</p>
            <ul>
               <li><a href="CA_H.jsp">Home</a></li>
               <li><a href="AC_U.jsp">Activate User</a></li>
                <li><a href="AC_O.jsp">Activate_Owner</a></li>
                <li><a href="Send_Key.jsp">Send Key</a></li>
                
                <li><a href="Login.jsp">Logout</a></li>
               
            </ul>
        </div>
        <div id="right">
            <CENTER>
            <h2>Key Generation</h2>
            <%String id=request.getParameter("id");
            session.setAttribute("id",id);
            String attr=request.getParameter("attribute");
 KeyGenerator keyGen = KeyGenerator.getInstance("AES");
                                keyGen.init(128);
                                SecretKey secretKey = keyGen.generateKey();
                                System.out.println("secret key:" + secretKey);
                                //converting secretkey to String
                                byte[] be = secretKey.getEncoded();//encoding secretkey
                                String skey = Base64.encode(be);
                                System.out.println("converted secretkey to string:" + skey);
                               

            %>
            <form action="GetPrivateKey.jsp" method="post">
            <table border="1" cellpadding="10">
                <tr><th>Public Parameter(Parts)</th><td><input type="text" value="<%=skey%>" name="pubkey"</td></tr>
                <tr><th>Attributes</th><td><input type="text" name="attribute" value="<%=attr%>"></td></tr>
                <tr><th></th><td><input type="submit" value="GetPrivateKey"></td></tr>
           
            </table>
            </form>
            </CENTER>
        </div>
        <div id="title"><p style="float:left;padding-top:0px;color:white;font-weight: bold;font-size:25px;">scrambled by Features in Distributed Computing</p></div>
        <div id="image"></div>
            
        
    </body>
</html>
