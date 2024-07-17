import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Avenged Sevenfold'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.zero, // Menghilangkan padding
              child: Image.network(
                'https://img.okezone.com/content/2024/03/04/205/2978631/5-lagu-populer-avenged-sevenfold-yang-bakal-dibawakan-saat-konser-di-jakarta-n0LnCJTDYw.jpeg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.all(16.0), // Padding untuk teks di bawah gambar
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Avenged Sevenfold',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Tentang Band',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Avenged Sevenfold (A7X) adalah band heavy metal dari Huntington Beach, California, dibentuk pada tahun 1999. Band ini dikenal dengan gaya musik yang beragam dan sering kali berubah antara album. Anggota band saat ini adalah M. Shadows (vokal), Synyster Gates (gitar), Zacky Vengeance (gitar), Johnny Christ (bass), dan Brooks Wackerman (drum).',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Album Terkenal',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '- Sounding the Seventh Trumpet (2001)\n- Waking the Fallen (2003)\n- City of Evil (2005)\n- Avenged Sevenfold (2007)\n- Nightmare (2010)\n- Hail to the King (2013)\n- The Stage (2016)',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Prestasi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Avenged Sevenfold telah memenangkan banyak penghargaan dan nominasi, termasuk Revolver Golden Gods Awards, Kerrang! Awards, dan MTV Music Awards. Mereka juga telah tampil sebagai headline di berbagai festival musik besar di seluruh dunia.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
