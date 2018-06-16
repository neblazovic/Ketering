/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Nebojsa
 */
public class Porudzbina {
    int IDPor;
    String datumPor,datumIsp,imeUpl,adresaUpl,adresaPrim,telPrim,emailUpl,imePrim,card,status;

    public Porudzbina() {
    }

    public Porudzbina(int IDPor, String datumPor, String datumIsp, String imeUpl, String adresaUpl, String adresaPrim, String telPrim, String emailUpl, String imePrim, String card, String status) {
        this.IDPor = IDPor;
        this.datumPor = datumPor;
        this.datumIsp = datumIsp;
        this.imeUpl = imeUpl;
        this.adresaUpl = adresaUpl;
        this.adresaPrim = adresaPrim;
        this.telPrim = telPrim;
        this.emailUpl = emailUpl;
        this.imePrim = imePrim;
        this.card = card;
        this.status = status;
    }

    public int getIDPor() {
        return IDPor;
    }

    public void setIDPor(int IDPor) {
        this.IDPor = IDPor;
    }

    public String getDatumPor() {
        return datumPor;
    }

    public void setDatumPor(String datumPor) {
        this.datumPor = datumPor;
    }

    public String getDatumIsp() {
        return datumIsp;
    }

    public void setDatumIsp(String datumIsp) {
        this.datumIsp = datumIsp;
    }

    public String getImeUpl() {
        return imeUpl;
    }

    public void setImeUpl(String imeUpl) {
        this.imeUpl = imeUpl;
    }

    public String getAdresaUpl() {
        return adresaUpl;
    }

    public void setAdresaUpl(String adresaUpl) {
        this.adresaUpl = adresaUpl;
    }

    public String getAdresaPrim() {
        return adresaPrim;
    }

    public void setAdresaPrim(String adresaPrim) {
        this.adresaPrim = adresaPrim;
    }

    public String getTelPrim() {
        return telPrim;
    }

    public void setTelPrim(String telPrim) {
        this.telPrim = telPrim;
    }

    public String getEmailUpl() {
        return emailUpl;
    }

    public void setEmailUpl(String emailUpl) {
        this.emailUpl = emailUpl;
    }

    public String getImePrim() {
        return imePrim;
    }

    public void setImePrim(String imePrim) {
        this.imePrim = imePrim;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
}
