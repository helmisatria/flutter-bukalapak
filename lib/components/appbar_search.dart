import 'package:flutter/material.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: IntrinsicHeight(
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            isDense: true,
            prefixIcon: IntrinsicWidth(
                child: Icon(Icons.search, color: Colors.black54)),
            contentPadding: const EdgeInsets.only(bottom: 10, top: 10),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0),
              borderRadius: BorderRadius.circular(4),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0),
              borderRadius: BorderRadius.circular(4),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 0),
              borderRadius: BorderRadius.circular(4),
            ),
            // enabledBorder: ,
            fillColor: Colors.black12,
            hintText: 'Mau Cari Apa?',
          ),
        ),
      ),
    );
  }
}
