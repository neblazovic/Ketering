
package servlets;

import beans.MySqlConnect;
import java.io.IOException;
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
public class SefKuhinjeServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ResultSet rs;
        String naziv,link;
        int kategorija=1;
        double cena=0.0;
        naziv=request.getParameter("naziv");
        cena=Double.parseDouble(request.getParameter("cena"));
        link=request.getParameter("link");
        kategorija=Integer.parseInt(request.getParameter("kategorija"));
        if(naziv != null && naziv.length()>0 && link!= null && link.length()>0){
            MySqlConnect db=new MySqlConnect(); 
            int ID=0;
            String upitMax="SELECT MAX(idProizvoda) FROM proizvod";               
            try{    
             rs=db.query(upitMax);
                if(rs.next()){
                    ID=rs.getInt("IDProizvoda")+1;
                }
                 }
            catch(SQLException sqle){
                System.out.println("Greska pri radu sa bazom  "+sqle);
            }
            
            String upit="INSERT INTO proizvod values('"+ID+"','"+naziv+"','"+kategorija+"','"+cena+"','"+link+"')"; 
            db.insert(upit);
                request.setAttribute("porukaPro", "Novi proizvod uspesno unet");
                request.getRequestDispatcher("sefKuhinje.jsp").forward(request, response);
                
            }
            else{
                request.setAttribute("porukaPro", "Svi podaci moraju biti uneti!!!");
                request.getRequestDispatcher("sefKuhinje.jsp").forward(request, response);
            }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String nazivProiz;
        nazivProiz=request.getParameter("nazivProiz");
        String upit="DELETE FROM proizvod where nazivProizvoda='"+nazivProiz+"'";
        if(nazivProiz!=null && nazivProiz.length()>0){
            MySqlConnect db=new MySqlConnect(); 
            db.insert(upit);
            request.setAttribute("porukaProBris", "Proizvod uspesno uklonjen");
            request.getRequestDispatcher("sefKuhinje.jsp").forward(request, response);
        }else{
            request.setAttribute("porukaProBris", "Unesite proizvod za brisanje!");
            request.getRequestDispatcher("sefKuhinje.jsp").forward(request, response);  
        }
        
    }
    
}
