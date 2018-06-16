<%-- 
    Document   : sefPoslovnice
    Created on : Feb 20, 2016, 4:47:34 PM
    Author     : Nebojsa Lazovic
--%>

<center>
    <div class="wrapper">  
        <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
      </style>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Porudzbina"%>
 <%@include file="header.jsp"%>
 <div id="main-menu">
            <ul class="menu">
                <li><a class="active" href="sefPoslovnice.jsp"><span>Pocetna</span></a></li>
                <li><a  href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
                <li><a  href="slaniProizvodi.jsp" ><span>Slano</span></a></li>
                <li><a href="Registracija.jsp"><span>Registracija</a></span></li>
                <li><a href="prijava.jsp"><span>Prijava</span></a></li>
                <li><a href="Logout.jsp"><span>Odjava</span></a></li>
            </ul>
        </div>
        <br >
 <div class="container">
            <center>
            <br/>  
            <div  style=" margin-left: 2px;margin-right: 2px;">
                <form  action="SefPoslovniceServlet" method="post">
                    <h3 style="margin:auto;">PORUDZBINE</h3>
                    <table>
                        <tr>
                            <th colspan="4">Porudzbina</th><th colspan="3">Narucilac</th><th colspan="3">Primalac</th>


                        </tr>
                                <tr>
                                    <th>ID</th><th>Datum porudzbine</th><th>Datum isporuke</th><th>Status</th><th>Ime</th>
                                    <th>Adresa</th><th>Broj kartice</th><th>Ime</th><th>Telefon</th><th>Adresa</th>
                                </tr> 
                                    <%
                                        ArrayList<Porudzbina> la;
                                        la=(ArrayList<Porudzbina>)session.getAttribute("arrayListPor");
                                          for(Porudzbina r: la)
                                        {
                                    %>
                                        <tr>
                                            <th><%=r.getIDPor()%></th><th><%=r.getDatumPor()%></th><th><%=r.getDatumIsp()%></th><th><%=r.getStatus()%></th>
                                            <th><%=r.getImeUpl()%></th><th><%=r.getAdresaUpl()%></th><th><%=r.getCard()%></th><th><%=r.getImePrim()%></th>
                                            <th><%=r.getTelPrim()%></th><th><%=r.getAdresaPrim()%></th>
                                        </tr>
                              <%}%>
                            </table>
                </form>
                           
                                <form method="get" action="SefPoslovniceServlet">

                                <tr>
                                    <td colspan="10" style="margin-left:auto;margin-right:auto;"></td>                        
                                </tr>
                                <tr>
                                    <td colspan="10" style="margin-left:auto;margin-right:auto;">Unesite ID porudzbine za obradu:
                                        <input type="text" name="porZaBrisanje" value=""/>
                                        <input type="submit" value="Obradi porudzbinu"/>
                                    </td>
                                </tr>
                                </form>
            </div>
            <div style="clear: both;"></div>
            <br/>
        </center>
 </div>
 <%@include file="footer.jsp"%>
     </div>
</center>