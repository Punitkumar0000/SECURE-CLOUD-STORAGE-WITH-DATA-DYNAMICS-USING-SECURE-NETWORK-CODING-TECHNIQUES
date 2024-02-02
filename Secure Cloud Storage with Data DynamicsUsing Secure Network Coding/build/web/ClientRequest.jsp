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
        <li><a href="CloudHome.jsp">Home</a></li>        
        
        <li><a href="ViewAllFiles.jsp">View All Files</a></li>
        <li class="active"><a href="ClientRequest.jsp">View Client Request</a></li>
      <li><a href="ViewUpdateReq.jsp">View update Request</a></li>
        <li class="last"><a href="CloudServer.jsp">Logout</a></li>
      </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>


<div class="wrapper col5">
  <div id="container">
    <div id="content">
   <%
 
   String username=(String)session.getAttribute("username");
   
   
   
   %>
     <center>
          <h2 style="margin-bottom:200px;">Welcome To :<%=username%></h2>
           
          <table>
              <tr>
                  <th>Request By</th>
                  <th>File ID</th>
                  <th>Requested Block</th>
                  <th>Date</th>
              </tr>
           <%
           try{
               String query="select * from request";
               ResultSet r=Queries.getExecuteQuery(query);
               while(r.next()){
                   String status=r.getString("status");
                   %>
                   <tr>
                       <td><%=r.getString("requestby")%></td>
                        <td><%=r.getString("fid")%></td>
                         <td><%=r.getString("block")%></td>
                         <%
                         if(status.equals("waiting")){
                             %>
                             <td><a href="TransferBlock.jsp?id=<%=r.getString("id")%>">Transfer</a></td> 
                             
                             <%
                         }else{
%>
<td><%=r.getString("status")%></td>
<%
}
                         
                         
                         %>
                         
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