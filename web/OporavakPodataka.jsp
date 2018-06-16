<%-- 
    Document   : prijava
    Created on : Feb 5, 2016, 6:30:13 PM
    Author     : Nebojsa Lazovic
--%>

<center>
    <div class="wrapper">  
    <%@include file="header.jsp"%>
    <div id="main-menu">
            <ul class="menu">
                <li><a href="index.jsp"><span>Pocetna</span></a></li>
                <li><a href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
                <li><a href="slaniProizvodi.jsp"><span>Slano</span></a></li>
                <li><a href="Registracija.jsp"><span>Registracija</a></span></li>
                <li><a class="active" href="prijava.jsp"><span>Prijava</span></a></li>
            </ul>
        </div>
        <br clear="all">
    <div class="container">
        <center>
            <br/>           
            <div class="okvir" style="margin-left: 200px; margin-bottom: 20px;"><br/>
                <form name="prijava" action="PromenaLozinkeServlet" method="post">
                    <strong>Molimo Vas da unesete svoje podatke</strong>
                    <table>
                         <%
                            String poruka=(String)request.getAttribute("poruka");
                            if(poruka!=null&&poruka.length()>0){
                        %>
                        
                                <div class="msg">
                                  <%=poruka%>
                                 </div>                
                        <%}%>
                        <tr>                          
                            <td>E-mail adresa:</td><td><input type="text" name="email"/></td>
                        </tr>  
                         <%
                            String korIme=(String)request.getAttribute("korIme");
                            String pass=(String)request.getAttribute("pass"); 
                            
                             if(korIme!=null&&korIme.length()>0&&pass!=null&&pass.length()<0){
                         %>
                         <tr>
                             <td>
                                 <input type="text" value="<%= korIme%>" />
                             </td>
                         </tr>
                         <tr>
                             <td>
                                 <input type="text" value="<%= pass%>" />
                             </td>
                         </tr>
                         <%}%>
                        <tr>                        
                            <td>
                                <center>
                                    <input type="submit" value="Pogledaj podatke"/>
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
