<%-- 
    Document   : Reklamacije
    Created on : Feb 5, 2016, 3:54:03 PM
    Author     : Nebojsa Lazovic
--%>

    <%@page import="javax.servlet.http.HttpServletRequest"%>
<center>
    <div class="wrapper">  
 <%@include file="header.jsp"%>
 <div id="main-menu">
            <ul class="menu">
                <li><a href="index.jsp"><span>Pocetna</span></a></li>
                <li><a href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
                <li><a href="slaniProizvodi.jsp" ><span>Slano</span></a></li>
                <li><a href="Registracija.jsp"><span>Registracija</a></span></li>
                <li><a href="prijava.jsp"><span>Prijava</span></a></li>
                <li><a href="Logout.jsp"><span>Odjava</span></a></li>
            </ul>
        </div>
        <br clear="all">
 <div class="container"><br/>           
            <div class="okvir"><br/>
                <form action="ReklamacijeServlet" method="post">
                     <strong>PODACI O KORISNIKU</strong><br/><br/><br/>
                     <strong>Molimo Vas unesite podatke</strong><br/><br/>
                    <table>
                        <%!String porukaRek;%>
                             <%
                                porukaRek=(String)request.getAttribute("porukaRek");
                                 if(porukaRek!=null){
                             %>
                            <tr>                            
                                 <td colspan="2" style="text-align: center; color:red;"><%=porukaRek %></td>
                            </tr> 
                        <%}%>
                         
                        <tr>
                            <td>Ime:</td><td><input type="text" name="ime"/></td>
                        </tr>   
                        <tr>                        
                            <td>Prezime:</td><td><input type="text" name="prezime"/></td>
                        </tr>   
                        <tr>                        
                            <td>E-mail:</td><td><input type="text" name="email"/></td>
                        </tr>  
                        <tr>                        
                            <td>
                                <center>
                                    <input type="submit" value="Posalji"/>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <input type="reset" value="Ponisti"/>
                                </center>
                            </td>
                        </tr>
                    </table>
               
                  </div>
                    <div class="okvir"><br/>
                         
                     <strong>PODACI O PORUDZBINI</strong><br/><br/>
                    <table>
                        <tr>
                            <td colspan="2" style="color:red;">Datum mora biti u formatu (dd-mm-gg)</td>
                        </tr>
                        <tr>
                            <td>Datum reklamacije:</td><td><input type="text" name="datumRek"/></td>
                        </tr> 
                         <tr>
                            <td>Datum porudzbine:</td><td><input type="text" name="datumPor"/></td>
                        </tr> 
                        <tr>
                            <td>Opis reklamacije:</td>
                        </tr>
                        <tr>
                        <td colspan="2"><textarea cols="32" rows="2" name="opis"></textarea></td>
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
