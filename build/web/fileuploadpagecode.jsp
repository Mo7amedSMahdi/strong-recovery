<%String email=(String)session.getAttribute("email");
            String id=(String)session.getAttribute("id");
            System.out.println("id:"+id);
            String query="select * from gnkeys where userid='"+id+"'";
            ResultSet rs=Queries.getExecuteQuery(query);
            
            
            %>  
<%while(rs.next()){
                     String pars=rs.getString("publickey");
                
                 String query1="select * from reg where id='"+id+"'";
                 ResultSet r=Queries.getExecuteQuery(query1);
                 while(r.next()){
                     String name=r.getString("username");
                 String branch =r.getString("branch");
                String department =r.getString("department");
                String subdept=r.getString("subdepartment");
             String job=r.getString("jobrole");
            %>
                <tr><td>Owner Name</td><td><input type="text" name="owner" value="<%=name%>" readonly></td></tr>
                <tr><td>Owner ParsKey</td><td><input type="text" name="pars" value="<%=pars%>" readonly></td></tr>
                
                <tr><th><u>Access Policy</u>:</th></tr>
                <tr><td>Branch</td><td><input type="text" value="<%=branch%>" name="branch" readonly=""></td></tr>
                <tr><td>Department</td><td><input type="text" value="<%=department%>" name="department" readonly=""></td></tr>
                <tr><td>Sub Department</td><td><input type="text" value="<%=subdept%>" name="subdept" readonly=""></td></tr>
                <tr><td>Job</td><td><input type="text" value="<%=job%>" name="job" readonly=""></td></tr>
                <%}
}%>