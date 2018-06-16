
    
    <%@page import="beans.Kategorija"%>
    <%@page import="java.sql.SQLException"%>
    <%@page import="beans.MySqlConnect"%>
    <%@page import="java.sql.ResultSet"%>
    <div class="content">    
            <%                
                MySqlConnect db=new MySqlConnect(); 
                ResultSet rs=null;
                String upit="SELECT * FROM kategorija";
                String veza;
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
                    if(naziv.equals("Slatko")){
                      veza="slatkiProizvodi.jsp";
                    }else
                      veza="slaniProizvodi.jsp";
                    
            %>
            <div class="kategorija">
                
                <div class="slika">
                    <a href="<%=veza%>"><img src="<%=kategorija.getSlika()%>"/></a></div>
                    <div class="naslovKategorije"><a href="<%=veza%>"><%=kategorija.getNaziv()%></a></div>
                <div class="opisKategorije"><%=kategorija.getOpis()%></div>
            </div>
            <% } %>          
        </div> 