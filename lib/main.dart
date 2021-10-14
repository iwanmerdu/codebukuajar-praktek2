import 'package:flutter/material.dart';
import 'package:proditi/kontak.dart';
import 'package:proditi/sejarah.dart';
import 'package:proditi/visi.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => MyApp(),
      '/sejarah': (context) => SejarahPage(),
      '/kontak' : (context) => KontakPage(),
      '/visi' : (context) => VisiPage(),
    },
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // menggunakan widget MaterialApp
    return MaterialApp(
      // Memberikan titel Aplikasi
      title: 'App Widget',
      // menggunakan widget scaffold
      home: Scaffold(
        // Membuat AppBar dengan set title, icon dan Bacground
          appBar: AppBar(
            title: Text('TI-SAINTEK'),
            leading: Icon(Icons.home),
            backgroundColor: Colors.blue,
          ),
          // menambahkan scrollview
          body: new SingleChildScrollView(
            // membuat kolom 
            child: new Column(
              // menambahkan widget untuk gambar
            children: <Widget>[
              Image.asset('assets/images/ti.png',
                width: 480.0,
                height: 160.0,
                fit: BoxFit.cover,
                ),
                // menambahkan teks
                Text(
                  'Program Studi Teknologi Informasi',
                  style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0),
                ),
                Text('UIN Ar-Raniry Banda Aceh'),
                // memberikan jarak komponen
                Container(
                  height: 15.0,
                ),

                // Membuat row untuk button
                Row(
                  // atur posisi 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // kode untuk buat Button/tombol
                      RaisedButton(
                        // teks pada button
                        child: Text('Sejarah',
                        style: TextStyle(fontSize: 16.0),),
                        color: Colors.blue,
                        // event pada button
                        onPressed: () {
                          Navigator.pushNamed(context, '/sejarah');
                        }),
                        // memberikan jarak antar button
                        Container(
                          width: 5.0,
                        ),
                      RaisedButton(
                        child: Text('Visi Misi',
                        style: TextStyle(fontSize: 16.0),),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pushNamed(context, '/visi');
                        }),
                        Container(
                          width: 5.0,
                        ),
                        Container(
                          width: 5.0,
                        ),
                      RaisedButton(
                        child: Text('Kontak',
                        style: TextStyle(fontSize: 16.0),),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pushNamed(context, '/kontak');
                        }),
                        Container(
                          width: 5.0,
                        ),                      

                    ],
                ),


                // menambahkan row untuk 2 gambar dalm satu baris
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network('https://ti.fst.ar-raniry.ac.id/wp-content/uploads/2021/02/photo_2021-02-23_12-54-30.jpg',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                    ),
                    Image.network('https://ti.fst.ar-raniry.ac.id/wp-content/uploads/2021/02/e.jpg',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                    )
                  ],
                ),
                
                Container(
                  height: 15.0,
                ),
                
                // row untuk gambar 3 dan 4
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network('https://ti.fst.ar-raniry.ac.id/wp-content/uploads/2021/02/b.jpg',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                    ),
                    Image.network('https://ti.fst.ar-raniry.ac.id/wp-content/uploads/2021/02/photo_2021-02-23_17-12-40.jpg',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                    )
                  ],
                ),
                
                Container(
                  height: 15.0,
                ),
                
                // row untuk gambar 5 dan 6
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network('https://ti.fst.ar-raniry.ac.id/wp-content/uploads/2021/02/d.jpg',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                    ),
                    Image.network('https://ti.fst.ar-raniry.ac.id/wp-content/uploads/2021/02/c.jpg',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                    )
                  ],
                ),

            ],
            ),
          )
      ),
    );
  }
}
