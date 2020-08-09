import 'package:flutter/material.dart';
import 'package:flutter_restapi/models/cases.dart';
import 'detailwidget.dart';

class CasesList extends StatelessWidget {

  final List<Cases> cases;
  CasesList({Key key, this.cases}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
          itemCount: cases == null ? 0 : cases.length,
          itemBuilder: (BuildContext context, int index) {
            return
              Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailWidget(cases[index])),
                      );
                    },
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text(cases[index].name),
                      subtitle: Text(cases[index].age.toString()),
                    ),
                  )
              );
          });
  }

}