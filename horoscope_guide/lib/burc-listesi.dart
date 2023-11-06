import 'package:flutter/material.dart';
import 'package:horoscope_guide/data/strings.dart';
import 'package:horoscope_guide/model/burc.dart';
import 'package:horoscope_guide/model/burc_item.dart';

class BurcListesi extends StatelessWidget {
 late final List<Burc> tumBurclar;// buardaki late amacı daha bunu initialized etmedip edicem demek istebiyor 
  BurcListesi(){
    tumBurclar=veriKaynaginiHazirla();
    
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Burçlar Listesi'),
      ),
      body: Center(
        child: ListView.builder(itemBuilder:(context,index){
          return BurcItem(listelenenBurc: tumBurclar[index],);
        } ,itemCount: tumBurclar.length,),
      ),
    );
  }
  
  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici=[];//bu fonksiyon içinde tanımlı boş bir lise tanımladım
    for (int i = 0; i < 12; i++) {
      var burcAdi=Strings.BURC_ADLARI[i];
      var burcTarihi=Strings.BURC_TARIHLERI[i];
      var burcDetay=Strings.BURC_GENEL_OZELLIKLERI[i];
      // koc1.jpg degerini olusturmak Koc-->koc --> koc1.png
      var burcKucukResim=Strings.BURC_ADLARI[i].toLowerCase()+'${i+1}.jpg';
      //koc_buyuk1.jpg
      var burcBuyukResim=Strings.BURC_ADLARI[i].toLowerCase()+'_buyuk'+'${i+1}.jpg';
      Burc eklenecekBurc=Burc(burcAdi,burcTarihi,burcDetay,burcKucukResim,burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;// bu listeyi doldurup geri döndürdüm
  }
}