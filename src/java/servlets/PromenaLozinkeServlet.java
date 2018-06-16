/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.MySqlConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nebojsa Lazovic
 */
public class PromenaLozinkeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String email=request.getParameter("email");
        String korIme=null;
        String pass=null;
        ResultSet rs=null;
        if (email !=null && email.length()>0){
         try{
                MySqlConnect db=new MySqlConnect(); 
                String upit="SELECT Username,Password FROM korisnik WHERE Email='"+email+"'";
                rs=db.query(upit);
             if(rs.next()){
                 korIme=rs.getString(1);
                 pass=rs.getString(2);
                 request.setAttribute("pass", pass);
                 request.setAttribute("korIme", korIme);
                 request.getRequestDispatcher("prijava.jsp").forward(request, response);
             }else{
                 request.setAttribute("poruka", "Nije registrovan navedeni email!!");
                 request.getRequestDispatcher("OporavakPodataka.jsp").forward(request, response);
             }
         
         }
         catch(SQLException sqle){
             out.println("Greska u radu sa bazom "+sqle);
         }
        }
}
}