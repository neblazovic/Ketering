
package servlets;
import beans.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class MasterServlet extends HttpServlet {   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                response.setContentType("text/html;charset=UTF-8");
             
            String ime,prezime,telefon,email,username,password,adresa;
            ime=request.getParameter("ime");
            prezime=request.getParameter("prezime");
            telefon=request.getParameter("phone");
            email=request.getParameter("email");
            username=request.getParameter("username");
            password=request.getParameter("password");
            adresa=request.getParameter("adress");
            
           
            if(ime != null && ime.length()>0 && prezime!=null && prezime.length() >0 && 
                telefon != null && telefon.length()>0 && email !=null && email.length() >0 && 
                username !=null && username.length()>0&&password!=null && password.length()>0&&
                adresa!=null && adresa.length()>0){
                Korisnik korisnik=new Korisnik( ime,prezime,username,password,adresa,telefon,email);
                HttpSession session=request.getSession();
                session.setAttribute("korisnik", korisnik);           
                MySqlConnect db=new MySqlConnect();                
                String radnoMesto="klijent";
                String upit="INSERT INTO korisnik values(null,'"+ime+"','"+prezime+"','"+username+"','"+password+"','"+adresa+"','"+telefon+"','"+email+"','"+radnoMesto+"')"; 
                
                db.insert(upit);                
                session.setAttribute("por", username);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            else{
                request.setAttribute("poruka", "Svi podaci moraju biti uneti!!!");
                request.getRequestDispatcher("Registracija.jsp").forward(request, response);
            }
    }
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         doPost(request, response);
    }
    }
    



