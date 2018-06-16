  

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
                <li><a  href="slatkiProizvodi.jsp"><span>Slatko</span></a></li>
                <li><a class="active" href="slaniProizvodi.jsp"><span>Slano</span></a></li>
                <li><a href="Registracija.jsp"><span>Registracija</span></a></li>
                <li><a href="prijava.jsp"><span>Prijava</span></a></li>
                <li><a href="Logout.jsp"><span>Odjava</span></a></li>
            </ul>
        </div>
        <br clear="all">
        <div class="container">           
          <div class="content">  
            <%                
                MySqlConnect db=new MySqlConnect(); 
                ResultSet rs=null;
                String upit="SELECT * FROM proizvod WHERE IDKategorije in('1','2','3','4','5')";
                rs=db.query(upit);
                Proizvod proizvod=null; 
                Korpa korpa=new Korpa();               
                while(rs.next()){
                int id=rs.getInt(1);
                String naziv=rs.getString(2);
                int kat=rs.getInt(3);
                int cena=rs.getInt(4);
                String slika=rs.getString(5);               
                proizvod=new Proizvod();                
                proizvod.setIDProizvoda(id);
                proizvod.setNazivProizvoda(naziv);
                proizvod.setCena(cena);
                proizvod.setSlika(slika);
            %>
            <div class="proizvod">
                <div class="slika"><img src="<%=slika%>"/></div>
                    <div class="korpa1">
                        <form action="FormaServlet" method="post">
                            Kolicina:<input type="text" size="3" value="1" name="kolicina">
                            <input type="hidden" id="id" name="id" value="<%=id%>">
                            <input type="hidden" name="ID" value="<%=id%>"/>
                            <input type="hidden" name="cena" value="<%=cena%>"/>
                            <input type="hidden" name="kategorija" value="<%=kat%>"/>
                            <input type="hidden" name="slika" value="<%=slika%>"/>
                            <input type="hidden" name="naziv" value="<%=naziv%>"/>
                               <center>
                                 <input class="korpaSubmit" type="image" 
                                  src="slike/korpa_30x30.jpg" alt="submit" />
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
