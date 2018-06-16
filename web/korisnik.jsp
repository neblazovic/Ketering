<%@page import="java.util.ArrayList"%>
<%@page import="beans.Korpa"%>
<div id="divKorisnik" style="float: left;">        
    <%
        String link="index.jsp";
        String por=(String)session.getAttribute("poruka");
        if(por!=null&&por.length()>0){
            if(por.equalsIgnoreCase("menadzer")){
                link="menadzer.jsp";
                
            }else if(por.equalsIgnoreCase("sefPoslovnice")){
                link="sefPoslovnice.jsp";
                
            }else if(por.equalsIgnoreCase("admin")){
                link="Admin.jsp";
              
            }else if(por.equalsIgnoreCase("sefKuhinje")){
                link="sefKuhinje.jsp";
            }
    %>                
    <div class="msg">
        <a href="<%=link%>"><%=por%></a>
    </div>                
    <%}%>
    <div id="divKorpa">
            <div class="suma">Ukupno:                
                <%                    
                  int cenaProizvoda=0;                 
                 Korpa cart =(Korpa)session.getAttribute("korpa");
                 if(cart!=null){
                  cenaProizvoda=cart.vratiSumu();  
                 }
                 %> 
                 <%=cenaProizvoda%>
            </div>
            <a href="sadrzajKorpe.jsp"><img src="slike/korpa_30x30.jpg" alt="korpa"/></a>
    </div>
    <div style="clear: both"></div>
</div>