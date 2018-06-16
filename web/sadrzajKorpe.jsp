

    <%@page import="java.util.Iterator"%>
    <%@page import="java.util.concurrent.ConcurrentHashMap"%>
    <%@page import="beans.Proizvod"%>
    <%@page import="beans.Kategorija"%>
    <%@page import="beans.Korpa"%>    
    <%@page import="java.sql.SQLException"%>
    <%@page import="beans.MySqlConnect"%>
    <%@page import="java.sql.ResultSet"%>       
    <%@page import="java.lang.Object"%> 
    
<center>   
<div class="wrapper">    
    <%@include file="header.jsp"%>
        <div class="main-menu">
            <ul class="menu">
                <li><a  href="index.jsp"><span>Pocetna</span></a></li>
                <li><a  href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
                <li><a href="slaniProizvodi.jsp"><span>Slano</span></a></li>
                <li><a href="Registracija.jsp"><span>Registracija</span></a></li>
                 <li><a href="prijava.jsp"><span>Prijava</span></a></li>
                <li><a href="Logout.jsp"><span>Odjava</span></a></li>
            </ul>
        </div>
        <br clear="all">
        <div class="container">                          
            <br/>           
            <div class="okvir" style="margin-left: 10px; width:780px;"><br/>
                <form  action="porudzbineServlet" method="post">
                    <%String ime=(String)session.getAttribute("poruka");%>
                    <center style="background-color: coral;width:149px;">
                        <%
                           if(ime!=null&&ime!=""){
                            }else{
                            ime="Ulogujte se!";}                                  
                        %>
                         <a href="prijava.jsp"><%=ime%></a>
                    </center>
                    <strong>Sadrzaj korpe:</strong>
                    <%String message=(String)session.getAttribute("por");%>
                     <%
                           if(message!=null&&message!=""){
                     %>
                               <center><%=message%></center>
                       <%        
                            }else{
                            message="";}                                  
                        %>
                        
                    <table>
                        <tr style="background-color: coral;text-align: center;">
                            <td>NAZIV</td><td>KOLICINA</td><td>CENA</td><td>IZNOS</td><td>BRISANJE</td>
                        </tr>
                        <%
                            Korpa korpa=(Korpa)session.getAttribute("korpa");
                            if(korpa==null){
                                korpa=new Korpa();
                            }
                            ConcurrentHashMap<Integer,Proizvod> proizvodi=korpa.vratiSadrzajKorpe();
                            Iterator <Integer> it=proizvodi.keySet().iterator();
                            while(it.hasNext()){
                                int unos=it.next();
                                Proizvod proizvod;
                                proizvod=proizvodi.get(unos);
                        %>       
                           
                            <tr style="background-color: lightslategray;text-align: center;">
                             
                             <input type="hidden" name="ID" value="<%=proizvod.getIDProizvoda()%>"/>
                            <td><input type="text" name="naziv" value="<%=proizvod.getNazivProizvoda()%>"/></td>
                            <td><input type="text" name="kol" id="kol" value="<%=proizvod.getKolicina()%>"/></td>
                            <td id="cena"><%=proizvod.getCena()%></td>
                            <td id="ukCena"><%=proizvod.getKolicina()* proizvod.getCena()%></td>
                            <td><input type="submit" name="brisanje" value="Obrisi"/></td>
                            </tr>  
                        <%
                            }
                        %>
                          <tr>
                            <td></td>
                            <td><input type="submit" name="narucivanje" value="Potvrdi" style="float: right;background-color: coral;"/></td>
                            <td></td>
                            
                            <td><input   style="background-color: #fff;" type="text" name="iznos" value="<%=korpa.vratiSumu()%>" disabled="true"/></td>
                            <td></td>
                        </tr>
                        
                        <tr>
                            <td colspan="3">
                            </td>
                        </tr>                     
                    </table>
                </form>
            </div>
            <div style="clear: both;"></div>
            <br/>

        </div>
    <%@include file="footer.jsp"%>
    </div>
</center>
