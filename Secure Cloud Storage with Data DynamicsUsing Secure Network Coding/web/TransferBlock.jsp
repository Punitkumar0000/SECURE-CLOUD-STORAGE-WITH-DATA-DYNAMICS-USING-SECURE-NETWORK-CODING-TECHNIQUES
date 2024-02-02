<%-- 
    Document   : TransferBlock
    Created on : 3 Oct, 2020, 3:17:18 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
try{
    String query="update request set status='Transfered' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0)
    {
    %>
    <script type="text/javascript">
        window.alert("Block Sucessfully Transfered..!!");
        window.location="ClientRequest.jsp";
    </script>
<%    
    } else{
%>
    <script type="text/javascript">
        window.alert("Failed");
        window.location="ClientRequest.jsp";
    </script>
<%  
}   
    
}catch(Exception e){
  out.println(e);  
}


%>