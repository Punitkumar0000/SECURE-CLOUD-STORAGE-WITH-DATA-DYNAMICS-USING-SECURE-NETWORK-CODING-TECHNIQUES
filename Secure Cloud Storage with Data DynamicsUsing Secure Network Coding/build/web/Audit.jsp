<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%
String fid=request.getParameter("fid");

try{
    String h="select count(*) from update_req where fid='"+fid+"'";
    ResultSet rr=Queries.getExecuteQuery(h);
    
    int c=0;
    while(rr.next()){
        c=rr.getInt(1);
    }
   if(c!=0){ 
  String query="select * from update_req where fid='"+fid+"'";  
 ResultSet r=Queries.getExecuteQuery(query);
 while(r.next()){
     String data=r.getString("data");
     String operation=r.getString("operation");
    String query1="select * from file where fid='"+fid+"'";  
 ResultSet r1=Queries.getExecuteQuery(query1); 
if(r1.next()){
    String odata=r1.getString("data");
     
String query2="insert into audit values(null,'"+fid+"','"+odata+"','"+operation+"','"+data+"',now())";
            Queries.getExecuteUpdate(query2);

 %>
                <script type="text/javascript">
                    window.alert("Data Modified");
                    window.location="TPAAudits.jsp";
                </script> 
              <%
}
} 
 
    
}else{
%>
                <script type="text/javascript">
                    window.alert("Data Not Modified");
                    window.location="TPAAudits.jsp";
                </script> 
              <% 
}  
}catch(Exception e){
   out.println(e); 
}




%>