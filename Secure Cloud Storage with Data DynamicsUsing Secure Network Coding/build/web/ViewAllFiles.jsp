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
        
        <li class="active"><a href="ViewAllFiles.jsp">View All Files</a></li>
        <li><a href="ClientRequest.jsp">View Client Request</a></li>
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
            <h4>View All File</h4>
          <table>
              <tr>
                  <th>File ID</th>
                  <th>File OwnerID</th>
                  <th>File Name</th>
                  <th>Upload Date</th>
                  
              </tr>   
             <%
             try{
                 String query="select * from file";
                 ResultSet r=Queries.getExecuteQuery(query);
                 
                 while(r.next()){
                     %>
                     <tr>
                         <td><%=r.getString("fid")%></td>
                         <td><a href="ViewAllFiles.jsp?owner=<%=r.getString("owner")%>"><%=r.getString("owner")%></a></td>
                         <td><a href="ViewAllFiles.jsp?fid=<%=r.getString("fid")%>"><%=r.getString("fname")%></a></td>
                         <td><%=r.getString("date")%></td>
                     </tr>
                     
                     <%
                 }
                 
                 
             }catch(Exception e){
              out.println(e);   
             }
              
             %> 
          </table>
           <%String fid=request.getParameter("fid");
           if(fid!=null){
               String query="select * from file where fid='"+fid+"'";
               ResultSet r=Queries.getExecuteQuery(query);
               while(r.next()){
                   String filename=r.getString("fname");
                    String data=r.getString("data");
                    String block1=r.getString("block1");
                    String block2=r.getString("block2");
                    String skey1=r.getString("skey1");
                    String skey2=r.getString("skey2");
                    %>
                    <table>
                        <tr><th>File Name</th><td><%=filename%></td></tr>
                         <tr><th>File Data</th><td><textarea cols="30" rows="15"><%=data%></textarea></td></tr>
                         <tr><th>Block1</th><td><textarea cols="30" rows="15"><%=block1%></textarea></td></tr>
                        <tr><th>Secret Key1</th><td><%=skey1%></td></tr>
<tr><th>Block2</th><td><textarea cols="30" rows="15"><%=block2%></textarea></td></tr>
                        <tr><th>Secret Key2</th><td><%=skey2%></td></tr>
                    </table>
                    
                    
                    
                    <%
               }
%>
<a href="ViewAllFiles.jsp">Back</a>
<%
           }
           %>
            <%String owner=request.getParameter("owner");
           if(owner!=null){
               String query="select * from owner where id='"+owner+"'";
               ResultSet r=Queries.getExecuteQuery(query);
               while(r.next()){
                   String name=r.getString("name");
                    String email=r.getString("email");
                    String mobile=r.getString("mobile");
                    String address=r.getString("address");
                   
                    %>
                    <table>
                        <tr><th>Name</th><td><%=name%></td></tr>
                            <tr><th>Email</th><td><%=email%></td></tr>
                            <tr><th>Mobile</th><td><%=mobile%></td></tr>
                        <tr><th>Address</th><td><%=address%></td></tr>
                    </table>
                    
                    
                    
                    <%
               }
%>
<a href="ViewAllFiles.jsp">Back</a>
<%
           }
           %>
  
     </center>
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