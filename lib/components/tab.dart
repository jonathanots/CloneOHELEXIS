import 'package:flutter/material.dart';

class TabBarr extends StatefulWidget {
  @override
  _TabBarrState createState() => _TabBarrState();
}

class _TabBarrState extends State<TabBarr> {

  Widget _button(String text){
    return Expanded(
      child: InkWell(
        onTap: (){},
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height*0.07,
          decoration: BoxDecoration(
            border: Border(left: BorderSide(color: Colors.grey[300]))
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Color(0xff6e0ad6),
                fontSize: 17
              ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _button("DDD 35 - Piranguinho"),
          _button("Categorias"),
          _button("Filtros")
        ],
      ),
    );
  }
}