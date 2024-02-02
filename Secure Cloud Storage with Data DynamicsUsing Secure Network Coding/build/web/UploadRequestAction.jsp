<%-- 
    Document   : UploadRequestAction
    Created on : 3 Oct, 2020, 2:52:10 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   String id=(String)session.getAttribute("id");
   String username=(String)session.getAttribute("username");
   String email=(String)session.getAttribute("email");
   
   String fid=request.getParameter("fid");
   String block=request.getParameter("block");
   
try{
  String query="insert into request values(null,'"+id+"','"+fid+"','"+block+"',now(),'waiting','waiting')";
int i=Queries.getExecuteUpdate(query);
if(i>0){
    %>
    <script type="text/javascript">
        window.alert("Request Sent Successfully..!!");
        window.location="RequestForBloack.jsp";
    </script>
    
    <%
}else{
 %>
    <script type="text/javascript">
        window.alert("Request Sending Failed..!!");
        window.location="RequestForBloack.jsp";
    </script>
    
    <%
}
          
    
    
}catch(Exception e){
  out.println(e);  
}


%>