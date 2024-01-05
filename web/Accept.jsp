<%@page import="java.sql.ResultSet"%>
<%@page import="com.query.Queries"%>
<%@page import="com.alphanumeric.Key"%>
<%String uid=request.getParameter("uid");
String fkey=request.getParameter("fkey");
String dkey=Key.randomAlphaNumeric(8);
String msg="Your Download Key is:"+dkey;
String query="update request set status='accepted',dkey='"+dkey+"' where requestid='"+uid+"' and commonkey='"+fkey+"'";
int i=Queries.getExecuteUpdate(query);
if(i>0){
    String query1="select * from reg where id='"+uid+"'";
   ResultSet r=Queries.getExecuteQuery(query1);
   while(r.next()){
       String email=r.getString("email");
       com.mail.Mail.secretMail(msg, email, email);
   }
   %>
   <script type="text/javascript">
       window.alert("Accepted Successfully");
       window.location="Send_Key.jsp";
       </script>
   <%
}else{
%>
   <script type="text/javascript">
       window.alert("Accepting Failed");
       window.location="Send_Key.jsp";
       </script>
   <%
}

%>