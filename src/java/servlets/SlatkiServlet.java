/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.Korpa;
import beans.Proizvod;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nebojsa
 */
public class SlatkiServlet extends HttpServlet {
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int kolicina;
       String naziv;
       String slika;
       int id;
       int cena;
       int kategorija;
       HttpSession session=request.getSession();   
       Korpa korpa=(Korpa)session.getAttribute("korpa");
       if (korpa==null){
           korpa=new Korpa();
       }
       kolicina=Integer.parseInt(request.getParameter("kolicina"));
       id=Integer.parseInt(request.getParameter("ID"));
       cena=Integer.parseInt(request.getParameter("cena"));
       slika=request.getParameter("slika");
       naziv=request.getParameter("naziv");
       kategorija=Integer.parseInt(request.getParameter("kategorija"));
            Proizvod proizvod;       
            proizvod=new Proizvod();
            proizvod.setIDProizvoda(id);
            proizvod.setIDKategorije(kategorija);
            proizvod.setKolicina(kolicina);
            proizvod.setCena( cena);
            proizvod.setNazivProizvoda(naziv);
            proizvod.setSlika(slika);
            ConcurrentHashMap<Integer,Proizvod> niz;
            niz= korpa.vratiSadrzajKorpe();
            korpa.dodajUKorpu(id,kolicina,cena,proizvod);

    session.setAttribute("korpa", korpa);
    RequestDispatcher rd=request.getRequestDispatcher("slatkiProizvodi.jsp");
    rd.forward(request, response);     
    }  

}
