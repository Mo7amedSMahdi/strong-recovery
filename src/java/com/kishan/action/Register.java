/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kishan.action;

import com.database.DBCon;
import com.query.Queries;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Acer
 */
public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
        String username=request.getParameter("uname");
         String password=request.getParameter("pwd");
         String email=request.getParameter("email");
         String mobile=request.getParameter("mobile");
          String branch=request.getParameter("branch");
         String department=request.getParameter("department");
         String subdepartment=request.getParameter("subdepartment");
         String jobrole=request.getParameter("jobrole");
         String role=request.getParameter("role");
         String query="select count(*) from reg where email='"+email+"' and status='accept'";
         String query1="insert into reg values(null,'"+username+"','"+password+"','"+email+"','"+mobile+"','"+branch+"','"+department+"','"+subdepartment+"','"+jobrole+"','"+role+"','waiting')";
         ResultSet rs=Queries.getExecuteQuery(query);
         while(rs.next()){
             int count=rs.getInt(1);
             if(count==0){
         int i=Queries.getExecuteUpdate(query1);
         if(i>0){
            response.sendRedirect("Login.jsp?msg=success"); 
         }else{
             response.sendRedirect("index.html?msg=failed");
         }
         
         }else{
               response.sendRedirect("index.html?msg=Email_already_exist");  
                 }
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
