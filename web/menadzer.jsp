<%-- 
    Document   : menadzer
    Created on : Feb 20, 2016, 4:47:14 PM
    Author     : Nebojsa Lazovic
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Reklamacija"%>
<head>
    <style>
        table {border-collapse: collapse;}
        table, td, th { border: 1px solid black;}
        td, th { width: 80px ;}
    </style>
</head>
<center>
    <div class="wrapper">  
 <%@include file="header.jsp"%>
 <div id="main-menu">
            <ul class="menu">
                <li><a class="active" href="index.jsp"><span>Pocetna</span></a></li>
                <li><a href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
                <li><a href="slaniProizvodi.jsp" ><span>Slano</span></a></li>
                <li><a href="Registracija.jsp"><span>Registracija</a></span></li>
                <li><a href="prijava.jsp"><span>Prijava</span></a></li>
                <li><a href="Logout.jsp"><span>Odjava</span></a></li>
            </ul>
        </div>
        <br clear="all">
 <div class="container">
            <center>
            <br/>           
            <div  style=" margin-left: 5px;"><br/>
                    <%!String porukaRe;%>
                    <%
                       porukaRe=(String)request.getAttribute("porukaRe");
                        if(porukaRe!=null){
                    %>                                                     
                        <div colspan="2" style="text-align: center; color:red;"><%=porukaRe %></div>                            
                        <%}%>
                            <table >
                                <tr>
                                    <th>ID rekl.</th><th>Ime</th><th>Prezime</th>
                                    <th>Email korisnika</th><th>Datum rekl.</th><th>Datum por.</th><th>Status</th><th>Opis</th>
                                </tr> 
                                    <%
                                        ArrayList<Reklamacija> la;
                                        la=(ArrayList<Reklamacija>)session.getAttribute("la");
                                          for(Reklamacija r: la)
                                        {
                                    %>
                                        <tr>
                                            <th><%=r.getIDReklamacije()%></th><th><%=r.getIme()%></th>
                                            <th><%=r.getPrezime()%></th><th><%=r.getEmail()%></th><th><%=r.getDatumReklamacije()%></th>
                                            <th><%=r.getDatumPorudzbine()%></th><th><%=r.getStatus()%></th><th><%=r.getOpis()%></th>
                                        </tr>
                              <%}%>
                            </table>
                           
                                <form method="get" action="MenadzerServlet">

                                <tr>
                                    <td colspan="8" style="margin-left:auto;margin-right:auto;"></td>                        
                                </tr>
                                <tr>
                                    <td colspan="8" style="margin-left:auto;margin-right:auto;">Unesite ID Reklamacije za obradu:
                                        <input type="text" name="idBrisanje" value=""/>
                                        <input type="submit" value="Obradi reklamaciju"/>
                                    </td>
                                </tr>
                                </form>
                          
                            </div>
            <br/>
        </center>
 </div>
 <%@include file="footer.jsp"%>
     </div>
</center>