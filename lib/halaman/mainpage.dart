import 'package:flutter/material.dart';
import 'package:flutter_application_1/halaman/pageolahraga.dart';
import 'package:flutter_application_1/halaman/pageotomotif.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/SportPage');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sports_tennis_sharp,
                        size: 68.0,
                      ),
                      Text(
                        'OLAHRAGA',
                        style: TextStyle(fontSize: 28.0),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/AutomotivePage');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sports_motorsports_outlined,
                        size: 68.0,
                      ),
                      Text(
                        'OTOMOTIF',
                        style: TextStyle(fontSize: 28.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(27.0)),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/ProfilePage');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_add_disabled,
                            size: 68.0,
                          ),
                          Text(
                            'PROFILE',
                            style: TextStyle(fontSize: 28.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
