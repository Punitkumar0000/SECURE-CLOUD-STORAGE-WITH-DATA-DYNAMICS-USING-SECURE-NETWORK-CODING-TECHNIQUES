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
           
          <h4>Select Block</h4>
          <form action="UploadRequestAction.jsp" method="post">
          <table>
             <%
            String fid=request.getParameter("fid");
              
             %> 
             <tr><th>File ID</th><td><input type="text" name="fid" value="<%=fid%>"></td></tr>
                         <tr><th>Select Block</th><td><select name="block" required="">
                                     <option></option>
                                     <option value="Block1">Block_1</option>
                                     <option value="Block2">Block_2</option>
                     </select></td></tr>
             
                         <tr><th></th><td><input type="submit" value="Submit"></tD></tr>
             
          </table>
          </form>
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