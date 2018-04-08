import 'package:flutter/material.dart';
import 'package:flutter_contatos/Widgets/contactDetail.dart';
import 'package:flutter_contatos/Widgets/list.dart';

class Home extends StatefulWidget {
    @override   
    createState() => new HomeState();
}

class HomeState extends State<Home> {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text("Lista de contatos"),
            ),
            body: new ContactList(),
            floatingActionButton: new FloatingActionButton(
                child: new Icon(Icons.person_add),
                onPressed: () {
                    _goToContact();
                    print("FloatButton");
                },
            ),
            bottomNavigationBar: new BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                    new BottomNavigationBarItem(
                        icon: new Icon(Icons.person),
                        title: new Text("Todos")
                    ),
                    new BottomNavigationBarItem(
                        icon: new Icon(Icons.star),
                        title: new Text("Favoritos"),
                    )
                ]
            ),
        );
    }

    void _goToContact() {
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => new Detail()
        ));
    }
}