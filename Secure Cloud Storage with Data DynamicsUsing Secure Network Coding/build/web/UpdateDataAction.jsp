<%-- 
    Document   : UpdateDataAction
    Created on : 3 Oct, 2020, 3:57:24 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
      String id=(String)session.getAttribute("id");
   String username=(String)session.getAttribute("username");
   String email=(String)session.getAttribute("email");
   
     String rid=(String)session.getAttribute("rid");
      String block=(String)session.getAttribute("block");
     String fid=(String) session.getAttribute("fid");
    
String operation=request.getParameter("operation");
String data=request.getParameter("data");

if(operation.equals("write")){
  try{
      String query="insert into update_req values(null,'"+rid+"','"+id+"','"+block+"','"+fid+"','"+operation+"','"+data+"','waiting')";
      int i=Queries.getExecuteUpdate(query);
      if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Request Sent Successfully To Cloud..!!");
            window.location="ViewResponse.jsp";
            </script>
        
        <%
      }else{
 %>
        <script type="text/javascript">
            window.alert("Request Sending Failed To Cloud..!!");
            window.location="ViewResponse.jsp";
            </script>
        
        <%
}
      
      
  }catch(Exception e){
      out.println(e);
  }
    
    
    
}else{
try{
      String query="insert into update_req values(null,'"+rid+"','"+id+"','"+block+"','"+fid+"','"+operation+"','waiting','waiting')";
      int i=Queries.getExecuteUpdate(query);
      if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Request Sent Successfully To Cloud..!!");
            window.location="ViewResponse.jsp";
            </script>
        
        <%
      }else{
 %>
        <script type="text/javascript">
            window.alert("Request Sending Failed To Cloud..!!");
            window.location="ViewResponse.jsp";
            </script>
        
        <%
}
      
      
  }catch(Exception e){
      out.println(e);
  }
    
}



%>