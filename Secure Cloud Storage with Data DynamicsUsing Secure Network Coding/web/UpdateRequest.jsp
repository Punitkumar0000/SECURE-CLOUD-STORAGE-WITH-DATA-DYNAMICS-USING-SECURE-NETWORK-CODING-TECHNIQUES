<%-- 
    Document   : DataOwner
    Created on : 3 Oct, 2020, 8:37:58 AM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
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
        <li><a href="RequestForBloack.jsp">Request For Block</a></li>
       <li class="active"><a href="ViewResponse.jsp">View Response</a></li>
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
           
          <h4>Select Operation To Be Perform</h4>
          <%
          String rid=request.getParameter("id");
          String block=request.getParameter("block");
          String fid=request.getParameter("fid");
          
      session.setAttribute("rid",rid);
      session.setAttribute("block",block);
      session.setAttribute("fid",fid);
          %>
          <form action="UpdateData.jsp" method="post">
          <table>
                      <tr><th>Select Operation</th><td>
                              <select name="operation" required="">
                                  <option></option>
                                  <option value="write">UPDATE</option>
                                  <option value="delete">DELETE</option>
                                  
                              </select>
                  </td></tr>
                      <tr>
                          <th></th><td><input type="submit" value="Submit"></td>
                      </tr>
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