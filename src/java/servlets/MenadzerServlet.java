
package servlets;

import beans.MySqlConnect;
import beans.Reklamacija;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nebojsa Lazovic
 */
public class MenadzerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         MySqlConnect db=new MySqlConnect(); 
        String upit="SELECT * FROM reklamacija";
        Reklamacija reklamacija;
        ArrayList<Reklamacija> la=new ArrayList<Reklamacija>();
        ResultSet rs;
        try{
            rs=db.query(upit);
            while(rs.next()){
            
                reklamacija=new Reklamacija(rs.getString(7),rs.getString(8),rs.getString(9),
                rs.getString(4),rs.getString(5),rs.getString(3),rs.getString(2),rs.getInt(1),rs.getInt(6));
                la.add(reklamacija);
             }
            HttpSession session=request.getSession();
            session.setAttribute("la", la);
            request.getRequestDispatcher("menadzer.jsp").forward(request, response);
        }catch(SQLException sqle){
            System.out.println("Greska pri radu sa bazom"+sqle);
        }
    }
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int brojZaBrisanje=Integer.parseInt(request.getParameter("idBrisanje"));
        String upit="UPDATE reklamacija SET status ='obradjena' WHERE IDReklamacije="+brojZaBrisanje;
        MySqlConnect db=new MySqlConnect();
        db.insert(upit);
        request.getRequestDispatcher("menadzer.jsp").forward(request, response);
    }
}
