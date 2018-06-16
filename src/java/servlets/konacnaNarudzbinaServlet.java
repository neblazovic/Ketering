/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.MySqlConnect;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nebojsa
 */
public class konacnaNarudzbinaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session=request.getSession();
        String username=(String)session.getAttribute("poruka");
     String imeUpl,imePrim,telPrim,emailUpl,datPor,datIsp,adresaPrim,adresaUpl,card;
            imeUpl=request.getParameter("imeUpl");
            imePrim=request.getParameter("imePrim");
            telPrim=request.getParameter("telPrim");
            emailUpl=request.getParameter("emailUpl");
            datPor=request.getParameter("datPor");
            datIsp=request.getParameter("datIsp");
            adresaPrim=request.getParameter("adresaPrim");
            adresaUpl=request.getParameter("adresaUpl");
            card=request.getParameter("card");
           
            if(imeUpl != null && imeUpl.length()>0 && imePrim!=null && imePrim.length() >0 && 
                telPrim != null && telPrim.length()>0 && emailUpl !=null && emailUpl.length() >0 && 
                datPor !=null && datPor.length()>0&&datIsp!=null && datIsp.length()>0&&
                adresaPrim!=null && adresaPrim.length()>0&&adresaUpl!=null && adresaUpl.length()>0 &&
                card!=null && card.length()>0){      
            try {      
                MySqlConnect db=new MySqlConnect();
                ResultSet rs;
                String MaxId="SELECT MAX(IDPorudzbine) FROM porudzbina";
                int sledeciIdPor=0;
                
                rs= db.query(MaxId);
                try {
                    while (rs.next()){
                        sledeciIdPor=rs.getInt(1);
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(konacnaNarudzbinaServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
                rs.close();
                sledeciIdPor+=1;
                String upit="INSERT INTO porudzbina values('"+sledeciIdPor+"','"
                        +datPor+"','"+datIsp+"','"+imeUpl+"','"+adresaUpl+"','"
                        +adresaPrim+"','"+telPrim+"','"+emailUpl+"','"+imePrim
                        +"','"+card+"','porucena')";
                db.insert(upit);
                session.setAttribute("por", "Proizvodi su naruceni");
                request.getRequestDispatcher("sadrzajKorpe.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(konacnaNarudzbinaServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
            else{
                session.setAttribute("porukaPro", "Svi podaci moraju biti uneti!!!");
                request.getRequestDispatcher("unosPodatakaNarudzbenice.jsp").forward(request, response);
            }
}
}