import 'package:bukalapak/components/appbar_search.dart';
import 'package:bukalapak/components/image_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppBarSearch(),
        actions: <Widget>[
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
        ],
      ),
      body: Container(
        // child: Text('asd'),
        child: ImageSlider(),
      ),
    );
  }

  _doSomething() {
    debugPrint('click');
  }
}
