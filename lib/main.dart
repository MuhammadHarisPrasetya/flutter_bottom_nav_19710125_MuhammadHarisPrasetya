import 'package:flutter/material.dart';

void main() => runApp(BelajarRowColumn());

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BelajarRowColumn',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AplikasiKu(),
    );
  }
}

class AplikasiKu extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Row & Column',
          style: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold
          ),
          ),
        
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.airplay_outlined), Text('Berbagi')],
              )),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.home), Text('Beranda')],
              )),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.forward), Text('Kembali')],
              )),
          ],
        ),
      ),
    );
  }
}