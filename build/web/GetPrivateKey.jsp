<%@page import="com.query.Queries"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%
String id=(String)session.getAttribute("id");
String pubkey=request.getParameter("pubkey");
String attribute=request.getParameter("attribute");
 KeyGenerator keyGen = KeyGenerator.getInstance("AES");
                                keyGen.init(128);
                                SecretKey secretKey = keyGen.generateKey();
                                System.out.println("secret key:" + secretKey);
                                //converting secretkey to String
                                byte[] be = secretKey.getEncoded();//encoding secretkey
                                String skey = Base64.encode(be);
                                
try{
   String query="update reg set status='accepted' where id='"+id+"'";
   String query1="insert into gnkeys values('"+id+"','"+pubkey+"','"+attribute+"','"+skey+"')";
   int i=Queries.getExecuteUpdate(query);
   if(i>0){
    int ii=Queries.getExecuteUpdate(query1);
   %>
    <script type="text/javascript">
        window.alert("Accepted Owner successfully");
        window.location="AC_O.jsp";
        </script>
    <%}else{
%>
    <script type="text/javascript">
        window.alert("Accepting Failed");
        window.location="AC_O.jsp";
        </script>
    <%
}
   
}catch(Exception e){
    out.println(e);
    
}
                                
%>