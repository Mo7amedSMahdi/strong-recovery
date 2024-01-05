/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.file.upload;

import com.alphanumeric.Key;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.io.FileUtils;
import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.util.Enumeration;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Acer
 */
@MultipartConfig(fileSizeThreshold=1024*1024*10, 	// 10 MB 
                 maxFileSize=1024*1024*50,      	// 50 MB
                 maxRequestSize=1024*1024*100)   	// 100 MB
public class UploadFile extends HttpServlet {
private static final long serialVersionUID = 205242440643911308L;
  private static final String UPLOAD_DIR = "uploads";
    final String filepath = "C://Users//Al-Baba pc//Desktop//project";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        try{
             MultipartRequest m = new MultipartRequest(request, filepath);
             String owner=(String)session.getAttribute("owner");
              String pars=(String)session.getAttribute("pars");
               String branch=(String)session.getAttribute("branch"); 
               String department=(String)session.getAttribute("department");
               String subdept=(String)session.getAttribute("subdept");
               String job=(String)session.getAttribute("job");
               
               System.out.println("uploadfile.jsp:"+owner);
               System.out.println("uploadfile.jsp:"+pars);
               System.out.println("uploadfile.jsp:"+branch);
               System.out.println("uploadfile.jsp:"+department);
               System.out.println("uploadfile.jsp:"+subdept);
               System.out.println("uploadfile.jsp:"+job);
               
File f=m.getFile("file");
String filename=f.getName();
 
    BufferedReader br=new BufferedReader(new FileReader(f)); 
    StringBuffer sb = new StringBuffer();
            String temp = null;

            while ((temp = br.readLine()) != null) {
                sb.append(temp);
                
            }
           String data=sb.toString();
          out.println("++++++"+data);
         KeyGenerator keygen=KeyGenerator.getInstance("AES");
           keygen.init(128);
           SecretKey s=keygen.generateKey();
           //converting secret keyto string
           byte[] b=s.getEncoded();//encoding secret key
           String skey=Base64.encode(b);
           System.out.println("secret key:"+skey);
           //creating object for encryption class and calling method by passing values
         String cipher=new encryption().encrypt(data,s);
         System.out.println("+++"+cipher);
         //AlphaNumeric Key Generation
         String fkey=Key.randomAlphaNumeric(6);
          Connection con=DBCon.getCon();
          Statement st=con.createStatement();
         int i=st.executeUpdate("insert into file values(null,'"+owner+"','"+pars+"','"+branch+"','"+department+"','"+subdept+"','"+job+"','"+filename+"','"+data+"','"+skey+"','"+cipher+"','"+fkey+"')");
              //cloud start
           File f1 = new File("C://Users//Al-Baba pc//Desktop//",f.getName());
                                FileWriter fw = new FileWriter(f1);
                                fw.write(cipher);
                                fw.close();
                                Ftpcon ftpcon = new Ftpcon();
                                ftpcon.upload(f1, filename);
           if(i>0){
              response.sendRedirect("File_Upload.jsp?msg=uploaded successfully......."); 
           }else{
             
            response.sendRedirect("File_Upload.jsp?msg=upload failed..");    
           }
           

   
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
