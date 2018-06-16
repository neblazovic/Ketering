
    
    <%@page import="beans.Kategorija"%>
    <%@page import="java.sql.SQLException"%>
    <%@page import="beans.MySqlConnect"%>
    <%@page import="java.sql.ResultSet"%>
    <div id="content">    
            <%                
                MySqlConnect db=new MySqlConnect(); 
                ResultSet rs=null;
                String upit="SELECT * FROM kategorija";
                rs=db.query(upit);
                Kategorija kategorija=null;               
                while(rs.next()){
                int id=rs.getInt(1);
                String naziv=rs.getString(2);
                String opis=rs.getString(3);
                String vrsta=rs.getString(4);
                String slika=rs.getString(5);
                
                kategorija=new Kategorija();
                
                kategorija.setId(id);
                kategorija.setNaziv(naziv);
                kategorija.setOpis(opis);
                kategorija.setVrsta(vrsta);
                kategorija.setSlika(slika); 
            %>
            <div class="kategorija">
                <div class="slika">
                    <a href="#"><img src="<%=kategorija.getSlika()%>"/></a></div>
                <div class="naslovKategorije"><a href="#"><%=kategorija.getNaziv()%></a></div>
                <div class="opisKategorije"><%=kategorija.getOpis()%></div>
            </div>
            <% } %>          
        </div> 
    <div id="divKorisnik">
        
        <%
            String link="index.jsp";
            String por=(String)session.getAttribute("poruka");
            if(por!=null&&por.length()>0){
                if(por.equalsIgnoreCase("menadzer")){
                    link="menadzer.jsp";
                    return;
                }else if(por.equalsIgnoreCase("sefPoslovnice")){
                    link="sefPoslovnice.jsp";
                    return;
                }else if(por.equalsIgnoreCase("sefKuhinje")){
                    link="sefKuhinje.jsp";
                    return;
                }else if(por.equalsIgnoreCase("admin")){
                    link="Admin.jsp";
                }
        %>
                
        <div class="msg">
            <a href="<%=link%>"><%=por%></a>
        </div>                
        <%}%>
        <div id="divKorpa">
            <div class="suma">ukupna suma:
                <%! Double cena;%>
                <%           
                 String cenaString=(String)request.getAttribute("cena");
                     if(cenaString!=null){     
                     cena=Double.parseDouble(cenaString) ;
                      }else{
                    cena=0.0;
                 %>
        
 
                 <% } %>
            </div>
            <a href="#"><img src="slike/korpa_30x30.jpg" alt="korpa"/></a>
        </div>
            <div style="clear: both"></div>
    </div>
    
                
        

