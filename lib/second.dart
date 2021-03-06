import 'package:flutter/material.dart';
import 'package:widget_array/otherScreen.dart';

class second1 extends StatefulWidget {
  @override
  _secondState1 createState() => _secondState1();
}

class _secondState1 extends State<second1> {
  int count = 0;

  void clickAdd() {}
  @override
  Widget build(BuildContext context) {
    List<Widget> addWidgetInside = List.generate(count, (int i) => addAll(i));

    var query = MediaQuery.of(context).size;

    void sss() {
      //print("click");
      setState(() {
        count = count + 1;

        addWidgetInside.add(addAll(count));
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Array Widget"),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                sss();
              },
              child: Text("Add Widget"),
            ),
            Container(
              color: Colors.redAccent,
              height: query.height - 200,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: addWidgetInside,
              ),
            )
          ],
        ));
  }
}

class addAll extends StatefulWidget {
  var _num;
  addAll(this._num);
  @override
  _addAllState createState() => _addAllState();
}

class _addAllState extends State<addAll> {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        print("Num : " + widget._num.toString());

        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => otherScreen(widget._num)));
      },
      child: Text("Click Value ${widget._num}"),
    );
  }
}
