/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.upload;

import com.database.Queries;
import com.oreilly.servlet.MultipartRequest;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.security.SecureRandom;

/**
 *
 * @author KishanVenky
 */
@MultipartConfig(maxFileSize = 16177215)
public class FileUpload extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         HttpSession session=request.getSession();
         String id=(String)session.getAttribute("id");
String username=(String)session.getAttribute("username");
String email=(String)session.getAttribute("email");
         
        PrintWriter out = response.getWriter();
        final String filepath = "E:\\";
        try{
            MultipartRequest m = new MultipartRequest(request, filepath);
         String owner=m.getParameter("id");  
         String fid=m.getParameter("fid");
         
      
        File f=m.getFile("file");
         String filename=f.getName();
      
           
         BufferedReader br=new BufferedReader(new FileReader(f));
             StringBuffer sb = new StringBuffer();
            String temp = null;

            while ((temp = br.readLine()) != null) {
                sb.append(temp);
                
            }
           String data=sb.toString();
         
          
          
          KeyGenerator keygen=KeyGenerator.getInstance("AES");
           keygen.init(128);
           SecretKey s=keygen.generateKey();
           //converting secret keyto string
           byte[] b=s.getEncoded();//encoding secret key
           String skey=Base64.encode(b);
          
         
         
          String cipher=new encryption().encrypt(data,s);
         
         



session.setAttribute("fid",fid);
session.setAttribute("filename",filename);
session.setAttribute("data",data);
session.setAttribute("skey",skey);
session.setAttribute("cipher",cipher);

response.sendRedirect("Upload2.jsp");

       /**String query="insert into file values('"+fid+"','"+id+"','"+username+"','"+filename+"','"+data+"','"+skey+"','"+cipher+"',now(),'Cloud_A','waiting')";
       
       int i=Queries.getExecuteUpdate(query);
       if(i>0){
           response.sendRedirect("Upload.jsp?msg=success");
       }else{
           response.sendRedirect("Upload.jsp?msg=failed");
       }**/
       
 
         
        }catch(Exception e){
            out.println(e);
        }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
