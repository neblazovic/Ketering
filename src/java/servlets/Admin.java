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
public class Admin extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
            String ime,prezime,telefon,email,username,password,adresa,radnoMesto;
            ime=request.getParameter("ime");
            prezime=request.getParameter("prezime");
            telefon=request.getParameter("phone");
            email=request.getParameter("email");
            username=request.getParameter("username");
            password=request.getParameter("password");
            adresa=request.getParameter("adress");
            radnoMesto=request.getParameter("rMesto");
            if(ime != null && ime.length()>0 && prezime!=null && prezime.length() >0 && 
                telefon != null && telefon.length()>0 && email !=null && email.length() >0 && 
                username !=null && username.length()>0&&password!=null && password.length()>0&&
                adresa!=null && adresa.length()>0&&radnoMesto!=null&&radnoMesto.length()>0){
                MySqlConnect db=new MySqlConnect(); 
                String upit="INSERT INTO korisnik values(null,'"+ime+"','"+prezime+"','"+username+"','"+password+"','"+adresa+"','"+telefon+"','"+email+"','"+radnoMesto+"')"; 
               
                db.insert(upit);
                request.setAttribute("porukaReg", "Novi korisnik uspesno registrovan");
                request.getRequestDispatcher("Admin.jsp").forward(request, response);
                //return;
            }
            else{
                request.setAttribute("porukaReg", "Svi podaci moraju biti uneti!!!");
                request.getRequestDispatcher("Admin.jsp").forward(request, response);
            }

             }
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String brisiUsername;
        brisiUsername=request.getParameter("brisiUsername");
                    if(brisiUsername !=null && brisiUsername.length()>0){
                MySqlConnect db=new MySqlConnect(); 
                String upit2="DELETE FROM korisnik WHERE username ='"+brisiUsername+"'";
                db.insert(upit2);
                request.setAttribute("porukaBrisanje", "Korisnik uspesno obrisan");
                request.getRequestDispatcher("Admin.jsp").forward(request, response);
               
            }
    }

}
