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
public class Proizvod {
    int IDProizvoda;
    String nazivProizvoda;
    int IDKategorije;
    int cena;
    String slika;
    int kolicina;

    public int getKolicina() {
        return kolicina;
    }

    public void setKolicina(int kolicina) {
        this.kolicina = kolicina;
    }
    public Proizvod() {
    }

    public int getIDProizvoda() {
        return IDProizvoda;
    }

    public void setIDProizvoda(int IDProizvoda) {
        this.IDProizvoda = IDProizvoda;
    }

    public String getNazivProizvoda() {
        return nazivProizvoda;
    }

    public void setNazivProizvoda(String nazivProizvoda) {
        this.nazivProizvoda = nazivProizvoda;
    }

    public int getIDKategorije() {
        return IDKategorije;
    }

    public void setIDKategorije(int IDKategorije) {
        this.IDKategorije = IDKategorije;
    }

    public int getCena() {
        return cena;
    }

    public void setCena(int cena) {
        this.cena = cena;
    }

    public String getSlika() {
        return slika;
    }

    public void setSlika(String slika) {
        this.slika = slika;
    }
    
}
