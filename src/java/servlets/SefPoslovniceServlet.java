/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.MySqlConnect;
import beans.Porudzbina;
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
public class SefPoslovniceServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        MySqlConnect db=new MySqlConnect(); 
        String upit1="SELECT * FROM porudzbina";
        Porudzbina porudzbina;
        ArrayList<Porudzbina> arrayList=new ArrayList<Porudzbina>();
        ResultSet rset;
        try{
            rset=db.query(upit1);
            while(rset.next()){
            
                porudzbina=new Porudzbina(rset.getInt(1),rset.getString(2),rset.getString(3),
                rset.getString(4),rset.getString(5),rset.getString(6),rset.getString(7),rset.getString(8),rset.getString(9),rset.getString(10),rset.getString(11));
                arrayList.add(porudzbina);
             }
            HttpSession session=request.getSession();
            session.setAttribute("arrayListPor", arrayList);
            request.getRequestDispatcher("sefPoslovnice.jsp").forward(request, response);
        }catch(SQLException sqle){
            System.out.println("Greska pri radu sa bazom"+sqle);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                int porZaBrisanje;
                porZaBrisanje=Integer.parseInt(request.getParameter("porZaBrisanje"));
                String upit="UPDATE porudzbina SET status ='isporucena' WHERE IDPorudzbine="+porZaBrisanje;
                MySqlConnect db=new MySqlConnect();
                db.insert(upit);                
                request.getRequestDispatcher("sefPoslovnice.jsp").forward(request, response);
    }
}
