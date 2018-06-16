/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.MySqlConnect;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nebojsa Lazovic
 */
public class ReklamacijeServlet extends HttpServlet {

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      String ime,prezime,email,opis,datumRek,datumPor,status="poslata";
      
            ime=request.getParameter("ime");
            prezime=request.getParameter("prezime");
            email=request.getParameter("email");            
            opis=request.getParameter("opis");
            datumRek=request.getParameter("datumRek");
            datumPor=request.getParameter("datumPor");
             if(ime != null && ime.length()>0 && prezime!=null && prezime.length() >0&& email != null && email.length()>0){
                MySqlConnect db=new MySqlConnect(); 
                String upit="INSERT INTO reklamacija values(null,'"+datumRek+"','"+datumPor+"','"+opis+"','"+status+"',null,'"+ime+"','"+prezime+"','"+email+"')"; 
               
                db.insert(upit);
                 request.setAttribute("porukaRek", "Reklamacija poslata!!!");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
                         
            else{
                request.setAttribute("porukaRek", "Morate uneti ime, prezime i email!!!");
                request.getRequestDispatcher("Reklamacije.jsp").forward(request, response);
            }

    
}}
