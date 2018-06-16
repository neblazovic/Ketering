<%-- 
    Document   : unosPodatakaNarudzbenice
    Created on : Apr 14, 2016, 8:54:37 PM
    Author     : Nebojsa
--%>

<%@page import="javax.servlet.http.HttpServletRequest"%>
   <center>
    <div class="wrapper">  
 <%@include file="header.jsp"%>
 <div class="main-menu">
    <ul class="menu">
        <li><a href="sefKuhinje.jsp"><span>Pocetna</span></a></li>
        <li><a href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
        <li><a href="slaniProizvodi.jsp" ><span>Slano</span></a></li>
        <li><a href="registracija.jsp"><span>Registracija</a></span></li>
        <li><a href="prijava.jsp"><span>Prijava</span></a></li>
        <li><a href="Logout.jsp"><span>Odjava</span></a></li>
    </ul>
</div>
    <br clear="all">
 <div class="container"><br/>           
    <div class="okvir" style="margin-left: 240px; margin-right: auto;"><br/>
        <form action="konacnaNarudzbinaServlet" method="post">
            <strong>PODACI O PORUDZBINI</strong><br/><br/>
            <strong>Unesite svoje podatke</strong><br/>
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
                        <td>Ime i prezime uplatioca:</td>
                        <td><input type="text" name="imeUpl"/></td>
                    </tr>  
                    <tr>
                        <td>Ime i prezime primaoca:</td>
                        <td><input type="text" name="imePrim"/></td>
                    </tr>  
                    <tr>                        
                        <td>Datum porudzbine:</td>
                        <td ><input type="text" name="datPor"/></td>
                    </tr>
                    <tr>                        
                        <td>Datum isporuke:</td>
                        <td><input type="text" name="datIsp"/></td>
                    </tr> 
                    <tr>                        
                        <td>Adresa uplatioca:</td>
                        <td><input type="text" name="adresaUpl"/></td>
                    </tr>
                    <tr>                        
                        <td>Adresa primaoca:</td>
                        <td><input type="text" name="adresaPrim"/></td>
                    </tr>
                    <tr>                        
                        <td>Email uplatioca:</td>
                        <td><input type="text" name="emailUpl"/></td>
                    </tr>
                    <tr>                        
                        <td>Telefon primaoca:</td>
                        <td><input type="text" name="telPrim"/></td>
                    </tr>
                    <tr>                        
                        <td>Broj kartice:</td>
                        <td><input type="text" name="card"/></td>
                    </tr>
                    <tr>                        
                        <td colspan="2">
                            <center>
                                <input type="submit" value="Naruci"/>
                            </center>
                        </td>
                        </tr>
                        <tr>
                        <td colspan="2">
                            <center>
                                <a href="sadrzajKorpe.jsp">Odustani</a>
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