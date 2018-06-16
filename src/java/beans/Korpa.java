/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;


import java.util.concurrent.ConcurrentHashMap;
/**
 *
 * @author Nebojsa Lazovic
 */
public class Korpa {
    int suma=0;
    int cena;
    ConcurrentHashMap<Integer,Proizvod> shoppingCart;
    public Korpa() {
           shoppingCart=new ConcurrentHashMap<Integer,Proizvod>();
    }
    public  ConcurrentHashMap<Integer,Proizvod> vratiSadrzajKorpe(){
        return shoppingCart;
    }
    public  void isprazniKorpu(){
        shoppingCart.clear();
    }
    public void dodajUKorpu(int id, int kolicina,int cena,Proizvod p){
        if(shoppingCart.containsKey(id)){
           p.setKolicina(shoppingCart.get(id).getKolicina()+kolicina);
        }
        else{
           p.setKolicina(kolicina);
        }
        
           shoppingCart.put(id,p);
        this.povecajSumu(cena,kolicina);
    }
    public int vratiKolicinu(Proizvod p){
        return p.getKolicina();
    }

    public void izbaciIzKorpe( int id,int kolicina,int cena,Proizvod p){
        shoppingCart.remove(p.getIDProizvoda());
      this.smanjiSumu(cena,kolicina);
    }
    public void povecajSumu(int cena,int kolicina){
        suma+=cena*kolicina;
    }
    public void smanjiSumu(int cena,int kolicina){
        suma-=cena*kolicina;
    }
    public int vratiSumu(){
        return suma;
    }
}
