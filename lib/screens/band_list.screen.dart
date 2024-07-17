import 'package:flutter/material.dart';
import 'package:myapp/screens/detail_band_screen.dart';

class BandListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> bands = [
    {
      "name": "Sounding the Seventh Trumpet",
      "origin": "Avenged Sevenfold",
      "image":
          "https://upload.wikimedia.org/wikipedia/en/thumb/9/98/Ststoriginal.jpg/220px-Ststoriginal.jpg",
      "gallery": [
        "https://img.okezone.com/content/2024/03/04/205/2978631/5-lagu-populer-avenged-sevenfold-yang-bakal-dibawakan-saat-konser-di-jakarta-n0LnCJTDYw.jpeg",
      ],
      "description":
          "Sounding the Seventh Trumpet adalah album debut Avenged Sevenfold yang dirilis pada tahun 2001. Album ini menunjukkan awal perjalanan musik band dengan gaya metalcore yang kental, menampilkan vokal scream yang intens dari M. Shadows serta permainan gitar cepat dan keras dari Synyster Gates dan Zacky Vengeance. Album ini menjadi fondasi penting bagi karier band dan menarik perhatian dari penggemar musik metal di seluruh dunia."
          
    },
    {
      "name": "Waking the Fallen",
      "origin": "Avenged Sevenfold",
      "image":
          "https://i.scdn.co/image/ab67616d0000b273c6cc22f5b41a85deba08751e",
      "gallery": [
        "https://img.okezone.com/content/2024/03/04/205/2978631/5-lagu-populer-avenged-sevenfold-yang-bakal-dibawakan-saat-konser-di-jakarta-n0LnCJTDYw.jpeg",
      ],
      "description":
          "Waking the Fallen adalah album kedua Avenged Sevenfold yang dirilis pada tahun 2003. Album ini menandai transisi band menuju suara yang lebih matang dan terstruktur, memadukan elemen metalcore dengan melodi yang lebih harmonis. Lagu-lagu seperti Unholy Confessions dan Second Heartbeat menjadi hits besar dan membantu Avenged Sevenfold mendapatkan pengakuan yang lebih luas di kancah musik metal."
          
    },
    {
      "name": "City of Evil",
      "origin": "Avenged Sevenfold",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1KAVg9UGZ8v-jttkRpD1-i-8SUqIAibfyJg&s",
      "gallery": [
        "https://img.okezone.com/content/2024/03/04/205/2978631/5-lagu-populer-avenged-sevenfold-yang-bakal-dibawakan-saat-konser-di-jakarta-n0LnCJTDYw.jpeg",
      ],
      "description":
          "City of Evil adalah album ketiga Avenged Sevenfold yang dirilis pada tahun 2005. Album ini membawa perubahan signifikan dalam gaya musik band, mengadopsi suara heavy metal yang lebih epik dan kompleks. Lagu-lagu seperti Bat Country dan Beast and the Harlot memperlihatkan kemampuan teknis tinggi dan kreativitas band, menjadikan album ini sebagai salah satu karya paling berpengaruh dalam diskografi mereka."
          
    },
    {
      "name": "Nightmare",
      "origin": "Avenged Sevenfold",
      "image":
          "https://upload.wikimedia.org/wikipedia/id/d/df/Avenged_Sevenfold_-_Nightmare.png",
      "gallery": [
        "https://img.okezone.com/content/2024/03/04/205/2978631/5-lagu-populer-avenged-sevenfold-yang-bakal-dibawakan-saat-konser-di-jakarta-n0LnCJTDYw.jpeg",
      ],
      "description":
          "Nightmare adalah album kelima Avenged Sevenfold yang dirilis pada tahun 2010. Album ini dipenuhi dengan emosi mendalam dan lirik gelap, sebagian besar terinspirasi oleh kematian tragis drummer mereka, The Rev. Lagu-lagu seperti Nightmare dan So Far Away menjadi penghormatan bagi The Rev, dan album ini diterima dengan sangat baik oleh penggemar dan kritikus."
          
    },
    {
      "name": "Hail to the King",
      "origin": "Avenged Sevenfold",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFVYVUsm2TVD0uskIBMJq4_KiZSL8O4CVNew&s",
      "gallery": [
        "https://img.okezone.com/content/2024/03/04/205/2978631/5-lagu-populer-avenged-sevenfold-yang-bakal-dibawakan-saat-konser-di-jakarta-n0LnCJTDYw.jpeg",
      ],
      "description":
          "Hail to the King adalah album keenam Avenged Sevenfold yang dirilis pada tahun 2013. Album ini menampilkan suara yang lebih terinspirasi oleh heavy metal klasik, dengan pengaruh dari band-band seperti Metallica dan Guns N' Roses. Lagu-lagu seperti Hail to the King dan Shepherd of Fire menonjolkan vokal kuat M. Shadows dan riff gitar yang menggema, menjadikan album ini sukses besar di seluruh dunia."
          
    },
 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Albums A7X'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: bands.length,
        itemBuilder: (context, index) {
          final band = bands[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFE0E0E0)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              leading: Image.network(
                band['image'],
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(band['name']),
              subtitle: Text(band['origin']),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailBandScreen(
                      name: band['name'],
                      origin: band['origin'],
                      image: band['image'],
                      gallery: List<String>.from(band['gallery']),
                      description: band['description'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
