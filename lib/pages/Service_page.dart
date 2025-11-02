import 'package:flutter/material.dart';


class service extends StatefulWidget {
  const service({super.key});

  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {

  final events = [
    {
      "speaker": "Lior chamla",
      "date": "13h a 15h",
      "subject": "Le code",
      "avatar": "damizzzzzzen"
    },
    {
      "speaker": "Lior chamla",
    "date": "13h a 15h",
    "subject": "Le code",
    "avatar": "damieazazazan"
    },
    {
      "speaker": "Lior chamla",
      "date": "13h a 15h",
      "subject": "Le code",
      "avatar": "damsieaaan"
    },


  ];
  @override
  Widget build(BuildContext context) {
    return Center(
          child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index){
              final event = events[index];
              final avatar = event['avatar'];
              return Card(
                child: ListTile(
                  leading: Text("logo $avatar"),
                ),

              );         },

          )
      )
    ;
  }
}
