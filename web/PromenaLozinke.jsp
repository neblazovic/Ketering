<%-- 
    Document   : prijava
    Created on : Feb 5, 2016, 6:30:13 PM
    Author     : Nebojsa Lazovic
--%>
 <%@page import="beans.MySqlConnect"%>
<center>
    <div class="wrapper">  
    <%@include file="header.jsp"%>
    <div id="main-menu">
            <ul class="menu">
                <li><a href="index.jsp"><span>Pocetna</span></a></li>
                <li><a><span>Slatko</span></a></li>
                <li><a><span>Slano</span></a></li>
                <li><a href="Registracija.jsp"><span>Registracija</a></span></li>
                <li><a class="active" href="prijava.jsp"><span>Prijava</span></a></li>
                <li><a href="Logout.jsp"><span>Odjava</span></a></li>
            </ul>
        </div>
        <br clear="all">
    <div class="container">
            <br/> 
        <center>          
            <div class="okvir" style="margin-left: 240px;"><br/>       
                <form name="promenaLozinke" action="PrijavaServlet" method="post">
                    <strong>Molimo Vas da unesete svoje podatke</strong>
                    <table>
                         <tr>
                            <td colspan="2">                                
                                <div class="msg">
                                    <%
                                        String upozorenje=(String)request.getAttribute("upozorenje");
                                        if(upozorenje!=null&&upozorenje.length()>0){
                                    %>
                                        <%=upozorenje%>
                                    <%}%>
                                </div>                                
                            </td>
                        </tr> 
                        <tr>
                            <td>Korisnicko ime:</td><td><input type="text" name="prUsername"/></td>
                        </tr>  
                        <tr>                        
                            <td>Nova lozinka:</td><td><input type="password" name="prPassword"/></td>
                        </tr> 
                        <tr>                        
                            <td>Potvrdi lozinku:</td><td><input type="password" name="ponovoPassword"/></td>
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
            <br/>
        </center>
    </div>
    <%@include file="footer.jsp"%>
        </div>
</center>
