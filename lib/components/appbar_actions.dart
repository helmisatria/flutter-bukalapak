import 'package:flutter/material.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return list();
  }

  list() {
    return [
    InkWell(
      onTap: () => _doSomething(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.camera,
          color: Colors.black54,
        ),
      ),
    ),
    InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.notifications,
          color: Colors.black54,
        ),
      ),
      onTap: () => _doSomething(),
    ),
    InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.message,
          color: Colors.black54,
        ),
      ),
      onTap: () => _doSomething(),
    ),
    InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.shopping_cart,
          color: Colors.black54,
        ),
      ),
      onTap: () => _doSomething(),
    ),
  ];
  }

  _doSomething() {
    debugPrint('click!');
  }
}
