import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    //navigation bar ile işim bitti sıra burada
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF5D3EBC),
        title: Text(
          "getir",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "JihoSoftBold",
              color: Color(0xFFFFD300)),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                color: Color(0xFFFFD300),
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    Text(
                      "TVS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "9dk",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width *
                      0.85, //genişliği sınırlandırmak için kullandım.
                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ev,",
                          style: TextStyle(
                              color: Color(0xFF5D3EBC),
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      Text("Merkez Mah. Mutlu Sok. No:5"),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Image(image: AssetImage('images/ust_foto.png')),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4, //soldan sağa kaç eleman
              crossAxisSpacing: 1, //sütunlar arası boşluk miktarı
              mainAxisSpacing: 1, //satırlar arsı boşluk miktarı
              padding: EdgeInsets.all(5.0),
              children: [
                KategoriKarti('images/indirim.png', "İndirimler"),
                KategoriKarti('images/yeni_urun.png', "Yeni Ürünler"),
                KategoriKarti('images/icecek.png', "Su & İçecek"),
                KategoriKarti('images/meyve.png', "Meyve & Sebze"),
                KategoriKarti('images/firindan.png', "Fırından"),
                KategoriKarti('images/atistirmalik.png', "Atıştırmalık"),
                KategoriKarti('images/dondurma.png', "Dondurma"),
                KategoriKarti('images/sut.png', "Süt Ürünleri"),
                KategoriKarti('images/kahvalti.png', "Kahvaltılık"),
                KategoriKarti('images/yiyecek.png', "Yiyecek"),
                KategoriKarti('images/fit.png', "Fit & Form"),
                KategoriKarti('images/kisisel_bakim.png', "Kişisel Bakım"),
                KategoriKarti('images/ev_bakim.png', "Ev Bakım"),
                KategoriKarti('images/ev_yasam.png', "Ev & Yaşam"),
                KategoriKarti('images/et.png', "Et, Tavuk & Balık"),
                KategoriKarti('images/evcil_hayvan.png', "Evcil Hayvan"),
                KategoriKarti('images/temel_gida.png', "Temel Gıda"),
                KategoriKarti('images/bebek.png', "Bebek"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget KategoriKarti(String resimYolu, String baslik) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            resimYolu,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),
        Text(
          baslik,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
