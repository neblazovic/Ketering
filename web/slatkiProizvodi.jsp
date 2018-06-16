    <%@page import="beans.*"%>
    <%@page import="java.sql.SQLException"%>
    <%@page import="java.sql.ResultSet"%>       
    <%@page import="java.util.ArrayList"%>  
<center>   
<div class="wrapper">    
    <%@include file="header.jsp"%>
        <div class="main-menu">
            <ul class="menu">
                <li><a  href="index.jsp"><span>Pocetna</span></a></li>
                <li><a class="active" href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
                <li><a href="slaniProizvodi.jsp"><span>Slano</span></a></li>
                <li><a href="Registracija.jsp"><span>Registracija</span></a></li>
                 <li><a href="prijava.jsp"><span>Prijava</span></a></li>
                <li><a href="Logout.jsp"><span>Odjava</span></a></li>
            </ul>
        </div>
        <br clear="all">
        <div class="container">           
          <div class="content" style="float: left;">            
            <%                
                MySqlConnect db=new MySqlConnect(); 
                ResultSet rs=null;
                String upit="SELECT * FROM proizvod WHERE IDKategorije ='6'";
                rs=db.query(upit);                
                while(rs.next()){
                int id=rs.getInt(1);
                String naziv=rs.getString(2);
                int kat=rs.getInt(3);
                int cena=rs.getInt(4);
                String slika=rs.getString(5);
            %>
            <div class="proizvod">
                <div class="slika"><img src="<%=slika%>"/></div>
                    <div class="korpa1">                      
                        <form  action="SlatkiServlet" method="post">
                            Kolicina:<input type="text" name="kolicina" size="3" value="1">
                            <input type="hidden" name="ID" value="<%=id%>"/>
                            <input type="hidden" name="cena" value="<%=cena%>"/>
                            <input type="hidden" name="kategorija" value="<%=kat%>"/>
                            <input type="hidden" name="slika" value="<%=slika%>"/>
                            <input type="hidden" name="naziv" value="<%=naziv%>"/>
                            <center>
                                <input class="korpaSubmit" type="image" src="slike/korpa_30x30.jpg" alt="submit"/>
                            </center>
                        </form>
                    </div>
                <div class="naslovKategorije">
                    <h4 style="margin-bottom: 15px;"><%=naziv%></h4>
                </div>
                    
                <div class="opisKategorije"><%=cena+" din/Kg"%></div>
            </div>
            <% } %>
        </div> 
        <%@include file="korisnik.jsp"%>
        <%@include file="content-right.jsp"%>
            <div style="clear:both;"></div>
        </div>
    <%@include file="footer.jsp"%>
    </div>
</center>
