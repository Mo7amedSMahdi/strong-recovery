<%@page import="com.alphanumeric.Key"%>
<%@page import="com.alphanumeric.Key"%>
<%@page import="com.query.Queries"%>
<%
    String email=(String)session.getAttribute("email");
            String id=(String)session.getAttribute("id");
           
            String key=request.getParameter("fkey");
String name[]=request.getParameterValues("fname");
int l=name.length;
System.out.println("FRequest.jsp:"+l);
String ckey=Key.randomAlphaNumeric(4);

for(int i=0;i<name.length;i++){
 String query="insert into request values('"+id+"','"+name[i]+"','"+key+"','waiting','"+ckey+"','waiting')"; 
int ii=Queries.getExecuteUpdate(query);
if(ii>0){%>
<script type="text/javascript">
    window.alert("Request Sent Successfully");
    window.location="S_File.jsp";
    </script>
<%}else{
%>
<script type="text/javascript">
    window.alert("Request Send Failed");
    window.location="S_Action.jsp";
    </script>
<%
}
}

%>  