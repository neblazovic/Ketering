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
public class Kategorija {
    int id;
    String naziv;
    String opis;
    String vrsta;
    String slika;

    public Kategorija() {
    }

    public Kategorija(int id, String naziv, String opis, String vrsta, String slika) {
        this.id = id;
        this.naziv = naziv;
        this.opis = opis;
        this.vrsta = vrsta;
        this.slika = slika;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }
    public String getVrsta() {
        return vrsta;
    }

    public void setVrsta(String vrsta) {
        this.vrsta = vrsta;
    }

    public String getSlika() {
        return slika;
    }

    public void setSlika(String slika) {
        this.slika = slika;
    }


    
}
