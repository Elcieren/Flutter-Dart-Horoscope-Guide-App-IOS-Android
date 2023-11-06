import 'package:flutter/material.dart';
import 'package:horoscope_guide/burc_detay.dart';
import 'package:horoscope_guide/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc,super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle=Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: ()  {
              Navigator.pushNamed(context, '/burcDetay',arguments:listelenenBurc);
            },
            leading: Image.asset(
              "images/"+listelenenBurc.burcKucukResim,
              width: 64,
              height: 64,),
            title: Text(
              listelenenBurc.burcAdi,style: myTextStyle.headlineSmall,),
            subtitle: Text(
              listelenenBurc.burcTarihi,style: myTextStyle.bodyMedium,),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,),
          ),
        ),
      ),
    );
  }
}