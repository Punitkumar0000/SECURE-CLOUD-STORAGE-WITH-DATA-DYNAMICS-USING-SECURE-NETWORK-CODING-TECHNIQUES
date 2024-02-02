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
        <li><a href="ClientRequest.jsp">View Client Request</a></li>
      <li class="active"><a href="ViewUpdateReq.jsp">View update Request</a></li>
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
              <h4>View Update Request</h4>
              <tr>
                  <th>Request By</th>
                  <th>File ID</th>
                  <th>Requested Block</th>
                  <th>Operation</th>
                  <th>Action</th>
              </tr>
           <%
           try{
               String query="select * from update_req u,request r where u.req_table_id=r.id";
               ResultSet r=Queries.getExecuteQuery(query);
               while(r.next()){
                   String status=r.getString("u.status");
                   %>
                   <tr>
                       <td><%=r.getString("u.owner")%></td>
                        <td><%=r.getString("u.fid")%></td>
                         <td><%=r.getString("u.block")%></td>
                          <td><%=r.getString("u.operation")%></td>
                         <%
                         if(status.equals("waiting")&&r.getString("u.operation").equals("write")){
                             %>
                             <td><a href="PerTask.jsp?id=<%=r.getString("u.id")%>&data=<%=r.getString("u.data")%>&block=<%=r.getString("u.block")%>&fid=<%=r.getString("u.fid")%>">Perform Action</a></td> 
                             
                             <%
                         }else if(status.equals("waiting")&&r.getString("u.operation").equals("delete")){
%>
 <td><a href="PerTask1.jsp?id=<%=r.getString("u.id")%>&block=<%=r.getString("u.block")%>&fid=<%=r.getString("u.fid")%>&fid=<%=r.getString("u.fid")%>">Perform Action</a></td> 

<%
}else{
%>
<td><%=r.getString("u.status")%></td>
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