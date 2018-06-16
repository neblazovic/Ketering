 <%@page import="beans.MySqlConnect"%>
<%
    HttpSession sess =request.getSession();
    String idPosetioca=(String)sess.getId();
    sess.setAttribute("id", idPosetioca);
    MySqlConnect baza=new MySqlConnect();  
    String upit1="insert into brojposeta values(null,'"+idPosetioca+"')";
    String upit2="select * from brojposeta where IdPosete='"+idPosetioca+"'";
    ResultSet rset=null;
    baza.insert(upit1);
    
    rset=baza.query(upit2);
    while(rset.next()){
    int broj=rset.getInt(1);
    sess.setAttribute("broj",broj);
    }
%>
<center>   
<div class="wrapper">    
        <%@include file="header.jsp"%>
        <div class="main-menu">
            <ul class="menu">
                <li><a class="active" href="index.jsp"><span>Pocetna</span></a></li>
                <li><a href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
                <li><a href="slaniProizvodi.jsp"><span>Slano</span></a></li>
                <li><a href="Registracija.jsp"><span>Registracija</a></span></li>
                <li><a href="prijava.jsp"><span>Prijava</span></a></li>
                <li><a href="Logout.jsp"><span>Odjava</span></a></li>
            </ul>
        </div>
        <br clear="all">
        <div class="container">                        
           
            <%@include file="content.jsp"%>
            <%@include file="korisnik.jsp"%>
            <%@include file="content-right.jsp"%>
            <div style="clear:both;"></div>
        </div>
    <%@include file="footer.jsp"%>
    </div>
</center>

