
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
                <form action="MenadzerServlet" method="post">
                    <table>
                        <tr><td><input type="submit" value="UCITAJ REKLAMACIJE"></td></tr>
                    </table>
                </form>
                    
            </div>
            <br/>
        </center>
 </div>
 <%@include file="footer.jsp"%>
     </div>
</center>