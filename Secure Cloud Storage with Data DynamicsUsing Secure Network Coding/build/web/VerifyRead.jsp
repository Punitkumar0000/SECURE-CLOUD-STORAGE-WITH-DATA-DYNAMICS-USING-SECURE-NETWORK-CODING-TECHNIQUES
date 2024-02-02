<%-- 
    Document   : VerifyRead
    Created on : 3 Oct, 2020, 3:31:25 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    String id=request.getParameter("id");
String block=request.getParameter("block");
String fid=request.getParameter("fid");

try{
   String query="select * from file where fid='"+fid+"'"; 
  ResultSet r=Queries.getExecuteQuery(query);
  if(r.next()){
     String data=r.getString("data");
      String block1=r.getString(block);
      
      if(data.equals(block1)){
          String query1="update request set status2='Verified' where id='"+id+"'"; 
  Queries.getExecuteUpdate(query1); 
         %>
         <script type="text/javascript">
             window.alert("File Data Matched");
             window.location="ViewResponse.jsp";
         </script>
         <%
      }else{
%>
         <script type="text/javascript">
             window.alert("Data Mismatched");
             window.location="ViewResponse.jsp";
         </script>
         <%
}
  }
    
}catch(Exception e){
 out.println(e);   
}


%>