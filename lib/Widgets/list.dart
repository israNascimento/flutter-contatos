import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
    @override
    createState() => new ContactState();
}

class ContactState extends State<ContactList>{
    List<String> _test = new List<String>();

    ContactState() {
        _test.add("Hello");
        _test.add("World!");
        _test.add("My name");
        _test.add("Is");
        _test.add("Israel");
    }

    @override
    Widget build(BuildContext context) {
        return contactList();
    }

    Widget contactList() {
        return new Container(
            child: new ListView.builder(
                itemCount: _test.length,
                itemBuilder: (context, i) {
                    return _buildTile(_test[i]); 
                }, 
            ) 
        );
    }

    Widget _buildTile(String element) {
        return new ListTile(
            title: new Text("$element"), 
            onTap: () {
                _test.add("Benemiche ${(_test.length)}");
            }
        );
    }
}