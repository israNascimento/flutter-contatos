import 'package:flutter/material.dart';
import 'package:flutter_contatos/Models/contact.dart';
import 'package:flutter_contatos/Widgets/contactDetail.dart';

class ContactList extends StatefulWidget {
    @override
    createState() => new ContactState();
}

class ContactState extends State<ContactList>{
    List<Contact> _contacts = new List<Contact>();

    ContactState() {
        _contacts.add(new Contact("Israel", "12345678", "israelnascimento@gmail.com"));
        _contacts.add(new Contact("Isaac", "542364", "isaac@gmail.com"));
        _contacts.add(new Contact("Michele", "98521452", "michele.a@gl.com"));
        _contacts.add(new Contact("Benilson", "9854515", "bene@yahoo.com.br"));
        _contacts.add(new Contact("Tamires", "12241251", "Tamires@gmail.com"));
    }

    @override
    Widget build(BuildContext context) {
        return contactList();
    }

    Widget contactList() {
        return new Container(
            child: new ListView.builder(
                itemCount: _contacts.length,
                itemBuilder: (context, i) {
                    return _buildTile(_contacts[i]); 
                },
            )
        );
    }

    Widget _buildTile(Contact element) {
        return new ListTile(
            title: new Text("${element.name}"), 
            onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new Detail(contact: element,)
                ));
            }
        );
    }
}