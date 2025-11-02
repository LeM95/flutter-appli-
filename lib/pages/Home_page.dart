import 'package:untitled2/pages/Service_page.dart';

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bienvenue chez Projet2Fou ",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold
            ),),
          Text("je ne sais quoi ecrire donc on improvise comme sa ",style: TextStyle(
            fontSize: 22,
          ),textAlign: TextAlign.center,),
          Padding(padding: EdgeInsets.all(20)),
          ElevatedButton.icon(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              onPressed: () {
                Navigator.push(
                    context, PageRouteBuilder(
                    pageBuilder: (_, __, ___) => service()
                )
                );
              },

              label: Text("afficher le planning",
                style: TextStyle(
                    fontSize: 25),),
              icon: Icon(Icons.home ,size: 35,)
          )
        ],
      ),
    );
  }
}