<%-- 
    Document   : DataOwner
    Created on : 3 Oct, 2020, 8:37:58 AM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page import="java.security.SecureRandom"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<title>Dynamic Data Safeguarding In Cloud Storage With Network Coding</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div id="logo" style="width:auto;">
      <h1><a href="#">Dynamic Data Safeguarding In Cloud Storage With Network Coding</a></h1>
      <p><strong></strong></p>
    </div>
    
    <br class="clear" />
  </div>
</div>
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li><a href="OwnerHome.jsp">Home</a></li>
        <li><a href="Upload.jsp">Upload</a></li>
      
        <li class="active"><a href="RequestForBloack.jsp">Request For Block</a></li>
        <li><a href="ViewResponse.jsp">View Response</a></li>
       <li class="last"><a href="DataOwner.jsp">Logout</a></li>
      </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>


<div class="wrapper col5">
  <div id="container">
    <div id="content">
   <%
   String id=(String)session.getAttribute("id");
   String username=(String)session.getAttribute("username");
   String email=(String)session.getAttribute("email");
   
     
%>
     <center>
          <h2 style="margin-bottom:100px;">Welcome To :<%=email%></h2>
           
          <h4>Request Block</h4>
          <table>
              <tr>
                  <th>File ID</th>
                  <th>File Name</th>
                  <th>Upload Date</th>
                  <th>Request</th>
              </tr>   
             <%
             try{
                 String query="select * from file where owner='"+id+"'";
                 ResultSet r=Queries.getExecuteQuery(query);
                 
                 while(r.next()){
                     %>
                     <tr>
                         <td><%=r.getString("fid")%></td>
                         <td><%=r.getString("fname")%></td>
                         <td><%=r.getString("date")%></td>
                         <td><a href="RequestBlock.jsp?fid=<%=r.getString("fid")%>">Request Cloud</a></td>
                     </tr>
                     
                     <%
                 }
                 
                 
             }catch(Exception e){
              out.println(e);   
             }
              
             %> 
          </table>
          
     </center>

    </div>
    <div id="column">
     
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col6">
  <div id="footer">
    
    
    
    <br class="clear" />
  </div>
</div>
<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left"></p>
     <br class="clear" />
  </div>
</div>
</body>
</html>