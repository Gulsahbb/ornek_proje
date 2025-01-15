import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.resolveWith((Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.green;
                  }
                  return Colors.red;
                }),
              ),
              child: Text('Save'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('A'),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.star),
            ),
            FloatingActionButton(
              onPressed: () {
                // Servise istek at
                // sayfanın rengini düzenle
                // kullanıcının butona basıp yapacağı işler
              },
              child: Icon(Icons.add),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: CircleBorder(),
              ),
              onPressed: () {},
              child: Text('Data'),
            ),
            InkWell(
              onTap: () {},
              child: Text('Custom'),
            ),
            Container(
              height: 200,
              color: Colors.brown,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, bottom: 16.0, top: 16.0),
                child: Text(
                  'Press Bid',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
            )
          ]),
        ));
  }
}
