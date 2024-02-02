<%-- 
    Document   : PerTask
    Created on : 3 Oct, 2020, 7:08:20 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

String id=request.getParameter("id");
String data=request.getParameter("data");
String block=request.getParameter("block");
String fid=request.getParameter("fid");

try{
    String query="update update_req set status='Operation Completed',data=Null where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      String query1="update file set "+block+"=Null where fid='"+fid+"'";
    Queries.getExecuteUpdate(query1);  
    %>
    <script type="text/javascript">
        window.alert("Operation Done");
        window.location="ViewUpdateReq.jsp";
    </script>
    
    <%
    
    }else{
%>
    <script type="text/javascript">
        window.alert("Operation Failed");
        window.location="ViewUpdateReq.jsp";
    </script>
    
    <%
}
    
}catch(Exception e){
    out.println(e);
}

%>