import 'package:flutter/material.dart';
import 'package:flutter_contatos/Models/contact.dart';

class Detail extends StatelessWidget {
    Contact _contact;
    TextEditingController _controllerName;
    TextEditingController _controllerEmail;
    TextEditingController _controllerTel;
    
    Detail({contact}) {
        _contact = contact;
        _controllerName = new TextEditingController(text: _contact?.name ?? "");
        _controllerEmail = new TextEditingController(text: _contact?.email ?? "");
        _controllerTel = new TextEditingController(text: _contact?.phone ?? "");
    }

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text("Detalhes do contato"),
                actions: <Widget>[
                    new IconButton(icon: new Icon(Icons.done, color: Colors.white), 
                        onPressed: () => _addContact(),)
                ],
            ),
            body: new Container(
                padding: new EdgeInsets.all(15.0),
                child: new Column(
                    children: <Widget>[
                        new TextField(
                            decoration: new InputDecoration(labelText: "Nome"),
                            maxLines: 1,
                            controller: _controllerName
                        ),
                        new TextField(
                            decoration: new InputDecoration(labelText: "Email"),
                            maxLines: 1,
                            controller: _controllerEmail
                        ),
                        new TextField(
                            decoration: new InputDecoration(labelText: "Telefone"),
                            maxLines: 1,
                            controller: _controllerTel
                        )
                    ],
                ),
            ),
        );
    }

    void _addContact() {
        if(_contact == null) {
            _contact = new Contact(_controllerName.text, _controllerName.text, _controllerEmail.text);
        } else {
            _contact.name = _controllerName.text;
            _contact.email = _controllerEmail.text;
            _contact.phone = _controllerTel.text;            
        }
        print(_contact.name);
    }
}