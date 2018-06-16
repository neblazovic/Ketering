/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Nebojsa Lazovic
 */
public class Reklamacija {
   String ime,prezime,email,opis,status,datumPorudzbine,datumReklamacije;
   int IDReklamacije,IDPorudzbine;

    public Reklamacija() {
    }

    public Reklamacija(String ime, String prezime, String email, String opis, String status, String datumPorudzbine, String datumReklamacije, int IDReklamacije, int IDPorudzbine) {
        this.ime = ime;
        this.prezime = prezime;
        this.email = email;
        this.opis = opis;
        this.status = status;
        this.datumPorudzbine = datumPorudzbine;
        this.datumReklamacije = datumReklamacije;
        this.IDReklamacije = IDReklamacije;
        this.IDPorudzbine = IDPorudzbine;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDatumPorudzbine() {
        return datumPorudzbine;
    }

    public void setDatumPorudzbine(String datumPorudzbine) {
        this.datumPorudzbine = datumPorudzbine;
    }

    public String getDatumReklamacije() {
        return datumReklamacije;
    }

    public void setDatumReklamacije(String datumReklamacije) {
        this.datumReklamacije = datumReklamacije;
    }

    public int getIDReklamacije() {
        return IDReklamacije;
    }

    public void setIDReklamacije(int IDReklamacije) {
        this.IDReklamacije = IDReklamacije;
    }

    public int getIDPorudzbine() {
        return IDPorudzbine;
    }

    public void setIDPorudzbine(int IDPorudzbine) {
        this.IDPorudzbine = IDPorudzbine;
    }
   
}
