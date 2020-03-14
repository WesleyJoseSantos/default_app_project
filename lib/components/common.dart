import 'package:flutter/material.dart';

Dismissible getDismissible(Widget it, String key, Container backContainer, void onDissmiss()){
    Dismissible thisIt;
     thisIt = new Dismissible(
      key: Key(key),
      background: backContainer,
      direction: DismissDirection.startToEnd,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: it
      ),
      onDismissed: (direction){
        onDissmiss();
      },
    );
    return(thisIt);
  }

  Container getContainerDelete(){
    return(Container(
      color: Colors.red,
      child: Align(
        alignment: Alignment(-0.9, 0),
        child: Icon(
          Icons.delete,
          color: Colors.white,
        )
      ),
    ));
  }

  Container getContainerConfig(){
    return(Container(
      color: Colors.green,
      child: Align(
        alignment: Alignment(-0.9, 0),
        child: Icon(
          Icons.settings,
          color: Colors.black,
        )
      ),
    ));
  }

  displayDialog(BuildContext context, TextEditingController _textFieldController, String message, String text, void onOk()) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(message),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(hintText: text),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('CANCELAR'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text('OK'),
              onPressed: () {
                onOk();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }