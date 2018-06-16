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
public class porudzbineServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int kolicina;
        int id;
        int cena;
        HttpSession session=request.getSession();   
        Korpa korpa=(Korpa)session.getAttribute("korpa");
        if (korpa==null){
           korpa=new Korpa();
        }
        ConcurrentHashMap map=korpa.vratiSadrzajKorpe();
        if(map==null){
            map=new ConcurrentHashMap();
        }
            kolicina=Integer.parseInt(request.getParameter("kol"));
            id=Integer.parseInt(request.getParameter("ID"));
            Proizvod pr=(Proizvod)map.get(id);
            cena=pr.getCena();
        //Brisanje suvisnih stavki iz korpe-klik na dugme brisanje
        if(request.getParameter("brisanje")!=null){
            korpa.izbaciIzKorpe(id,kolicina, cena,(Proizvod)map.get(id));
            session.setAttribute("korpa", korpa);
            RequestDispatcher rd=request.getRequestDispatcher("sadrzajKorpe.jsp");
            rd.forward(request, response);
        }
        else  if(request.getParameter("narucivanje")!=null){
            RequestDispatcher rd=request.getRequestDispatcher("unosPodatakaNarudzbenice.jsp");
            rd.forward(request, response);
        }
    }

    
}
