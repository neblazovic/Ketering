<%-- 
    Document   : prijava
    Created on : Feb 5, 2016, 6:30:13 PM
    Author     : Nebojsa Lazovic
--%>

    <%@page import="beans.Kategorija"%>
    <%@page import="java.sql.SQLException"%>
    <%@page import="beans.MySqlConnect"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.servlet.ServletRequest"%>

<center>
    <div class="wrapper">  
    <%@include file="header.jsp"%>
    <div class="main-menu">
        
            <ul class="menu">
                <li><a href="index.jsp" ><span>Pocetna</span></a></li>
                <li><a href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
                <li><a href="slaniProizvodi.jsp"><span>Slano</span></a></li>
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
                <form name="prijava" action="PrijavaServlet" method="post">
                    <strong>Molimo Vas da unesete svoje podatke</strong>
                    <table>
                    <%
                         String poruka=(String)request.getAttribute("poruka");
                         if(poruka!=null&&poruka.length()>0){
                     %>                
                        <tr>
                            <center>
                            <td colspan="2">
                                <font color="red">
                                  <%=poruka%>
                                </font>
                            </td>
                            </center>
                        </tr>
                    <%}%>                     
                        <tr>
                          <%!String korIme,pass;%>
                         <td>Korisnicko ime:</td>
                         <td><input type="text" name="username" 
                                    <%
                                     korIme=(String)request.getAttribute("korIme");                                                        
                                      if(korIme!=null&&korIme.length()>0){                                     
                                      
                                     %>
                                     value="<%=korIme%>"
                                     <%}
                                     %>
                                />
                         </td>
                        </tr>  
                        <tr>                        
                            <td>Lozinka:</td>
                            <td><input  name="password"
                                    <%                                    
                                     pass=(String)request.getAttribute("pass");  
                                      if(pass!=null&&pass.length()>0){                                        
                                      
                                    %>  
                                    type="text"
                                    value="<%=pass%>"
                                    <%}else{%>
                                    type="password"
                                    <%}%>
                                    />
                            </td>
                        </tr> 
                        
                        <tr>                        
                            <td>
                                <center>
                                    <input type="submit" value="Login"/>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <input type="reset" value="Ponisti"/>
                                </center>
                            </td>
                        </tr>
                        <tr>                        
                            <td colspan="2">
                                <center>
                                    <a href="OporavakPodataka.jsp">Zaboravili ste korisnicko ime ili lozinku?</a><br/>
                                    <a href="PromenaLozinke.jsp">Promena lozinke?</a>
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
