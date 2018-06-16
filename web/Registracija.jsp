<%-- 
    Document   : Registracija
    Created on : Feb 5, 2016, 3:54:03 PM
    Author     : Nebojsa Lazovic
--%>
<center>
    <div class="wrapper">  
 <%@include file="header.jsp"%>
 <div id="main-menu">
            <ul class="menu">
                <li><a href="index.jsp "><span>Pocetna</span></a></li>
                <li><a href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
                <li><a href="slaniProizvodi.jsp"><span>Slano</span></a></li>
                <li><a class="active" href="Registracija.jsp"><span>Registracija</a></span></li>
                <li><a href="prijava.jsp"><span>Prijava</span></a></li>
                <li><a href="Logout.jsp"><span>Odjava</span></a></li>
            </ul>
        </div>
        <br clear="all">
 <div class="container">
            <center>
            <br/>           
            <div class="okvir" style=" margin-left: 225px;"><br/>
                <form  action="MasterServlet" method="post">
                    <strong>Molimo Vas da unesete podatke</strong>
                    <table>
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
            <div style="clear: both;"></div>
            <br/>
        </center>
 </div>
 <%@include file="footer.jsp"%>
     </div>
</center>


