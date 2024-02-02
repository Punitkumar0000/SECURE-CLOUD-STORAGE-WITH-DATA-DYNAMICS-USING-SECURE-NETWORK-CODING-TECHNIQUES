<%-- 
    Document   : Upload3
    Created on : 30 Sep, 2020, 9:02:30 AM
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
String fname=request.getParameter("fname");
String skey=request.getParameter("skey");
String cipher=request.getParameter("cipher");
String data=request.getParameter("block1");
String skey1=request.getParameter("skey1");
String skey2=request.getParameter("skey2");


try{
    String query="insert into file values('"+fid+"','"+id+"','"+username+"','"+fname+"','"+data+"','"+skey+"','"+cipher+"',now(),'"+data+"','"+skey1+"','"+data+"','"+skey2+"','waiting')";
       
       int i=Queries.getExecuteUpdate(query);
       if(i>0){
           response.sendRedirect("Upload.jsp?msg=success");
       }else{
           response.sendRedirect("Upload.jsp?msg=failed");
       }
    
}catch(Exception e){
  out.println(e);  
}


%>