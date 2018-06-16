<%-- 
    Document   : Admin
    Created on : Feb 13, 2016, 9:38:34 AM
    Author     : Nebojsa Lazovic
--%>
    <%@page import="javax.servlet.http.HttpServletRequest"%>
<center>
    <div class="wrapper">  
 <%@include file="header.jsp"%>
 <div class="main-menu">
            <ul class="menu">
                <li><a class="active" href="Admin.jsp"><span>Pocetna</span></a></li>
                <li><a href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
                <li><a href="slaniProizvodi.jsp" ><span>Slano</span></a></li>
                <li><a  href="Registracija.jsp"><span>Registracija</a></span></li>
                <li><a href="prijava.jsp"><span>Prijava</span></a></li>
                <li><a href="Logout.jsp"><span>Odjava</span></a></li>
            </ul>
        </div>
        <br clear="all">
 <div class="container"><br/>           
            <div class="okvir"><br/>
                <form  action="Admin" method="post">
                     <strong>REGISTRACIJA KORISNIKA</strong><br/><br/>
                    <table>
                            <%!String porukaReg;%>
                             <%porukaReg=(String)request.getAttribute("porukaReg");
                             if(porukaReg!=null){%>
                         <tr>                            
                            <td colspan="2" style="text-align: center; color:red;"><%=porukaReg%></td>
                        </tr> 
                        <%}%>
                        <tr>
                            <td>Ime:</td><td><input type="text" name="ime"/></td>
                        </tr>   
                        <tr>                        
                            <td>Prezime:</td><td><input type="text" name="prezime"/></td>
                        </tr>  
                         <tr>
                            <td>Korisnicko ime:</td><td><input type="text" name="username"/></td>
                        </tr>  
                        <tr>                        
                            <td>Lozinka:</td><td><input type="password" name="password"/></td>
                        </tr> 
                         <tr>
                            <td>Adresa:</td><td><input type="text" name="adress"/></td>
                        </tr>   
                        <tr>                        
                            <td>Telefon:</td><td><input type="text" name="phone"/></td>
                        </tr>   
                        <tr>                        
                            <td>E-mail:</td><td><input type="text" name="email"/></td>
                        </tr>
                        <tr>                        
                            <td>Radno mesto:</td><td><input type="text" name="rMesto"/></td>
                        </tr>
                        <tr>                        
                            <td>
                                <center>
                                    <input type="submit" value="Registracija"/>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <input type="reset" value="Ponisti"/>
                                </center>
                            </td>
                        </tr>                      
                    </table>
                </form>
            </div>
     <div class="okvir"><br/>
                         <form  action="Admin" method="get">
                     <strong>BRISANJE KORISNIKA</strong><br/><br/>
                    <table>
                         <%!String porukaBrisanje;%>
                             <%porukaBrisanje=(String)request.getAttribute("porukaBrisanje");
                             if(porukaBrisanje!=null){%>
                         <tr>                            
                            <td colspan="2" style="text-align: center; color:red;"><%=porukaBrisanje%></td>
                        </tr> 
                        <%}%>
                         <tr>
                            <td>Korisnicko ime:</td><td><input type="text" name="brisiUsername"/></td>
                        </tr>  
                       
                        <tr>                        
                            <td>
                                <center>
                                    <input type="submit" value="Obrisi"/>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <input type="reset" value="Ponisti"/>
                                </center>
                            </td>
                        </tr>                      
                    </table>
                </form>
                </div>
                <div class="okvir" style="margin-top: 35px;"><br/>
                    <form  action="Admin" method="get">
                     <strong>AZURIRANJE KORISNIKA</strong><br/><br/>
                    <table>
                         <%!String porukaAzuriranje;%>
                             <%porukaAzuriranje=(String)request.getAttribute("porukaAzuriranje");
                             if(porukaAzuriranje!=null){%>
                         <tr>                            
                            <td colspan="2" style="text-align: center; color:red;"><%=porukaAzuriranje%></td>
                        </tr> 
                        <%}%>
                         <tr>
                            <td>Korisnicko ime:</td><td><input type="text" name="promenaUsername"/></td>
                        </tr>  
                        <tr>
                            <td>Staro radno mesto:</td><td><input type="text" name="staroRadMesto"/></td>
                        </tr> 
                        <tr>
                            <td>Novo radno mesto:</td><td><input type="text" name="NovoRadMesto"/></td>
                        </tr> 
                        <tr>                        
                            <td>
                                <center>
                                    <input type="submit" value="Promeni"/>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <input type="reset" value="Ponisti"/>
                                </center>
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
