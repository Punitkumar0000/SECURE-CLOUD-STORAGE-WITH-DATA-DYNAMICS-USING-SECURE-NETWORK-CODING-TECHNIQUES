<%-- 
    Document   : DataOwner
    Created on : 3 Oct, 2020, 8:37:58 AM
    Author     : KishanVenky
--%>

<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
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
        <li class="active"><a href="Upload.jsp">Upload</a></li>
        <li><a href="ViewFile.jsp">View File</a></li>
      
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
           <%
String fid=(String)session.getAttribute("fid");
String filename=(String)session.getAttribute("filename");
String data=(String)session.getAttribute("data");
String skey=(String)session.getAttribute("skey");
String cipher=(String)session.getAttribute("cipher");

   KeyGenerator keygen=KeyGenerator.getInstance("AES");
           keygen.init(128);
           SecretKey s=keygen.generateKey();
           //converting secret keyto string
           byte[] b=s.getEncoded();//encoding secret key
           String skey1=Base64.encode(b);
           

           keygen.init(128);
           SecretKey s1=keygen.generateKey();
           //converting secret keyto string
           byte[] b1=s1.getEncoded();//encoding secret key
           String skey2=Base64.encode(b1);
          
          %>
          <center>
            <form action="Upload3.jsp" method="post">
                <table>
                    <tr><th>File ID</th><td><input type='text' name='fid' value="<%=fid%>" readonly=''></td></tr>
                    <tr><th>File Name</th><td><input type='text' name='fname' value="<%=filename%>" readonly=""></td></tr>
                    <tr><th></th><td><input type='hidden' name='skey' value="<%=skey%>" readonly=""></td></tr>
                    <tr><th>Block1</th><td><textarea cols="30" rows="15" name='block1'  readonly=""><%=data%></textarea></td></tr>
                    <tr><th>Secret Key1</th><td><input type='text' name='skey1' value="<%=skey1%>" readonly=""></td></tr>
                    <tr><th>Block2</th><td><textarea cols="30" rows="15" name='block2'  readonly=""><%=data%></textarea></td></tr>
                    <tr><th>Secret Key2</th><td><input type='text' name='skey2' value="<%=skey2%>" readonly=""></td></tr>
               
                <tr><th></th><td><input type="hidden" name="cipher" value="<%=cipher%>"></td></tr>
          
                                          
 <tr><th></th><td><input type="submit" value="Upload"></td></tr>
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