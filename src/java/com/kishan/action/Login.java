/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kishan.action;

import com.query.Queries;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Login extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
       
        try{
       String utype=request.getParameter("utype");
       System.out.println("usertype:"+utype);
       String uname=request.getParameter("uname");
       System.out.println("uname:"+uname);
       String pwd=request.getParameter("pwd");
       System.out.println("pwd:"+pwd);
       if(utype.equals("ca")&&uname.equals("ca")&&pwd.equals("ca")){
           response.sendRedirect("CA_H.jsp?msg=success");
       }
      else if(utype.equals("cloudserver")&&uname.equals("cloudserver")&&pwd.equals("cloudserver")){
           response.sendRedirect("CS_H.jsp?msg=success");
       }else{
       String query="select * from reg where username='"+uname+"'and password='"+pwd+"' and status!='waiting'";
       ResultSet rs=Queries.getExecuteQuery(query);
      if(rs.next()){
          String email=rs.getString("email");
          String id=rs.getString("id");
           String role=rs.getString("role");
           if(utype.equals(role)&&utype.equals("user")){
               session.setAttribute("email",email);
                session.setAttribute("id",id);
               response.sendRedirect("U_H.jsp?msg=success");
           }
           if(utype.equals(role)&&utype.equals("owner")){
               session.setAttribute("email",email);
               session.setAttribute("id",id);
               response.sendRedirect("DA_H.jsp?msg=success");
           }else{
              response.sendRedirect("Login.jsp?msg=failed");  
           }
       }else{
        response.sendRedirect("Login.jsp?msg=Not Authorized");   
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
