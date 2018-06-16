/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;
import beans.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nebojsa Lazovic
 */
public class PrijavaServlet extends HttpServlet {

 
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession sesija= request.getSession();
    //parametri za logovanje
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    ResultSet rs;
    //parametri za promenu podataka
    String prUsername=request.getParameter("prUsername");
    String prPassword=request.getParameter("prPassword");
    String ponovoPassword=request.getParameter("ponovoPassword");
    if(username !=null && username.length()>0&& password!=null && password.length()>0){
         try{
                MySqlConnect db=new MySqlConnect(); 
                String upit="SELECT * FROM korisnik WHERE Username='"+username+"' and password='"+password+"'";
                rs=db.query(upit);
                if(rs.next()){
                    Korisnik korisnik=new Korisnik();
                    String radnoMesto=rs.getString(9);
                    korisnik.setUsername(username);
                    korisnik.setPassword(password); 
                    korisnik.setRadnoMesto(radnoMesto);                           
                 String link="index.jsp";           
                if(radnoMesto.equalsIgnoreCase("menadzer")){
                    link="menadzerNaslovna.jsp";
                    sesija.setAttribute("poruka",username); 
                    request.getRequestDispatcher(link).forward(request, response); 
                    return;
                }else if(radnoMesto.equalsIgnoreCase("sefPoslovnice")){
                    link="sefPoslovniceNaslovna.jsp";
                    sesija.setAttribute("poruka",username); 
                    request.getRequestDispatcher(link).forward(request, response); 
                    return;
                }else if(radnoMesto.equalsIgnoreCase("sefKuhinje")){
                    link="sefKuhinje.jsp";
                    sesija.setAttribute("poruka",username); 
                    request.getRequestDispatcher(link).forward(request, response); 
                    return;
                }else if(radnoMesto.equalsIgnoreCase("admin")){
                    link="Admin.jsp";
                }                 
                    sesija.setAttribute("poruka",username); 
                    request.getRequestDispatcher(link).forward(request, response); 
                }
                else{
                     request.setAttribute("poruka", "Ne postoji trazeni korisnik!");
                    request.getRequestDispatcher("prijava.jsp").forward(request, response);
                }
                }
                catch(SQLException sqle){
                   out.print("Greska pri radu sa bazom"+sqle);
                }
    }
  
    if(prUsername !=null && prUsername.length()>0&&prPassword!=null &&
        prPassword.length()>0&&ponovoPassword!=null && ponovoPassword.length()>0){
            if(prPassword.equals((String)ponovoPassword)){
                
                MySqlConnect db=new MySqlConnect(); 
                String upit="UPDATE korisnik SET password='"+prPassword+"' WHERE username='"+prUsername+"'";
                db.insert(upit);
                
                    Korisnik korisnik=new Korisnik();
                    korisnik.setUsername(username);
                    korisnik.setPassword(password);                      
                    sesija.setAttribute("korisnik",prUsername);
                    request.setAttribute("poruka", prUsername);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    request.setAttribute( "upozorenje","Lozinka uspesno promenjena");
                    RequestDispatcher rd=request.getRequestDispatcher("PromenaLozinke.jsp");
                    rd.forward(request, response);  
                    
            }
            else{
                 request.setAttribute( "upozorenje","Lozinke se moraju poklapati!!");
                request.getRequestDispatcher("PromenaLozinke.jsp").forward(request, response); 
                
            }
    }else{
         request.setAttribute( "upozorenje","Morate uneti sva polja!!");
                RequestDispatcher rd=request.getRequestDispatcher("prijava.jsp");
                rd.forward(request, response); 
    }
   }   
}
