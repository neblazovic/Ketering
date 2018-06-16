<%-- 
    Document   : sefKuhinje
    Created on : Feb 20, 2016, 4:47:52 PM
    Author     : Nebojsa Lazovic
--%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<center>
    <div class="wrapper">  
 <%@include file="header.jsp"%>
 <div class="main-menu">
    <ul class="menu">
        <li><a class="active" href="sefKuhinje.jsp"><span>Pocetna</span></a></li>
        <li><a href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
        <li><a href="slaniProizvodi.jsp" ><span>Slano</span></a></li>
        <li><a href="#"><span>Registracija</a></span></li>
        <li><a href="#"><span>Prijava</span></a></li>
        <li><a href="Logout.jsp"><span>Odjava</span></a></li>
    </ul>
</div>
    <br clear="all">
 <div class="container"><br/>           
    <div class="okvir"><br/>
        <form action="SefKuhinjeServlet" method="post">
            <strong>DODAVANJE PROIZVODA</strong><br/><br/>
            <strong>Unesite podatke o novom proizvodu</strong><br/><br/>
            <table>
                <%!String porukaPro;%>
                    <%
                       porukaPro=(String)request.getAttribute("porukaPro");
                        if(porukaPro!=null){
                    %>
                   <tr>                            
                        <td colspan="2" style="text-align: center; color:red;"><%=porukaPro %></td>
                   </tr> 
                    <%}%>
                         
                    <tr>
                        <td>Naziv proizvoda:</td>
                        <td><input type="text" name="naziv"/></td>
                    </tr>  
                    <tr>
                        <td>Kategorija proizvoda:</td>
                        <td><input type="text" name="kategorija"/></td>
                    </tr>  
                    <tr>                        
                        <td>Cena proizvoda:</td>
                        <td ><input type="text" name="cena"/></td>
                    </tr>
                    <tr>                        
                        <td>Lokacija slike:</td>
                        <td><input type="text" name="link"/></td>
                    </tr>   
                    <tr>                        
                        <td>
                            <center>
                                <input type="submit" value="Dodaj"/>
                            </center>
                        </td>
                        <td>
                            <center>
                                <input type="reset" value="Odustani"/>
                            </center>
                        </td>
                    </tr>
                    </table>
            </form>
                </div>
                <div class="okvir"><br/>

                   <strong>BRISANJE PROIZVODA</strong><br/><br/>
                   <form action="SefKuhinjeServlet" method="get">
                  <table>
                      <%!String porukaProBris;%>
                           <%
                              porukaProBris=(String)request.getAttribute("porukaProBris");
                               if(porukaProBris!=null){
                           %>
                          <tr>                            
                               <td colspan="2" style="text-align: center; color:red;"><%=porukaProBris %></td>
                          </tr> 
                      <%}%>
                      <tr>
                          <td >Naziv proizvoda:</td><td><input type="text" name="nazivProiz"/></td>
                      </tr>    
                      <tr>                        
                          <td>
                              <center>
                                  <input type="submit" value="Obrisi"/>
                              </center>
                          </td>
                          <td>
                              <center>
                                  <input type="reset" value="Odustani"/>
                              </center>
                          </td>
                      </tr>                      
                  </table>
                </form>
            </div>
     <div style="clear: both;"></div><br/>       
 </div>
 <%@include file="footer.jsp"%>
     </div>
</center>

