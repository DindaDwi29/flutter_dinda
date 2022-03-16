import 'package:flutter/material.dart';
import 'package:masakan_sunda/detail_screen.dart';
import 'package:masakan_sunda/model/tourism_place.dart';

class MenuScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Text("Resep Masakan Sunda"),
        ),
        body: ListView(
          children: tourismPlaceList.map((place){
            return FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(place:place);
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        flex: 1, child: Image.asset(place.imageAsset)),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              place.name,
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ));
  }
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Cendol',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 100 gram tepung beras'
          '\n - 200 gram tepung hunkwe'
          '\n - 1 sdm tepung kanji'
          '\n - air daun suji secukupnya'
          '\n - air kapur sirih secukupnya'
          '\n - air daun pandan secukupnya'
          '\n - garam'
          '\n - air secukupnya untuk merendam cendol yang sudah dicetak'

          '\n\n Bahan Kuah Santan :'

          '\n\n - 500 ml santan kental'
          '\n - 2 lembar daun pandan'
          '\n - garam'

          '\n\n Bahan Gula Merah :'

          '\n\n - 200 ml air putih'
          '\n - 400 gram gula merah, iris halus'
          '\n - 100 gram gula pasir'
          '\n - 2 lembar daun pandan'

          '\n\n Bahan Pelengkap :'

          '\n\n - potongan buah nangka'
          '\n - es batu secukupnya'

          '\n\n Cara Membuat Cendol :'

          '\n\n - Masukkan tepung hunkwe, tepung beras, kanji, air daun suji, air daun pandan, air kapur sirih, dan garam ke dalam panci. Aduk adonan sampai mengental.'
          '\n - Setelah mengental dan menggumpal, angkat. Siapkan baskom berisi air dan es batu.'
          '\n - Simpan saringan di atas baskom.'
          '\n - Ambil adonan cendol yang sudah dingin, lalu letakkan di atas cetakan.'
          '\n - Tekan adonan cendol hingga keluar dari saringan. Lakukan hingga adonan cendol habis.'
          '\n - Tiriskan cendol yang sudah jadi, lalu sisihkan.'

          '\n\n Cara Membuat Gula Merah :'

          '\n\n - Masak air dan gula merah secara bersamaan.'
          '\n - Masukkan daun pandan dan garam.'
          '\n - Masak gula merah hingga larut dan mendidih, pastikan diaduk sesekali biar gak gosong.'
          '\n - Setelah mendidih, angkat dan diamkan hingga dingin.'

           '\n\n Cara Membuat Kuah Santan :'

          '\n\n - Masak santan, air, garam, dan daun pandan. Aduk terus hingga mendidih.'
          '\n - Jika sudah mendidih, angkat, lalu dinginkan.'
          '\n - Taruh cendol ke dalam mangkuk atau gelas.'
          '\n - Masukkan kuah santan dan gula merah ke dalam mangkuk atau gelas.'
          '\n - Supaya lebih nikmat, tambahkan sedikit potongan buah nangka.'
          '\n - Es cendol khas Bandung siap dihidangkan.',
    imageAsset: 'assets/images/cendol.png',
    
  ),
  TourismPlace(
    name: 'Es Doger',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 200 gram kelapa muda'
          '\n - 2500 gram es serut'
          '\n - 25 gram sagu mutiara merah'
          '\n - 25 gram sagu mutiara hijau'
          '\n - 75 gram tape ketan hitam'
          '\n - 125 gram alpukat'
          '\n - 125 gram nangka'
          '\n - 100 gram tape singkong'

          '\n\n Bahan Sirup :'

          '\n\n - 250 gram kental manis'
          '\n - 500 gram gula pasir'
          '\n - 250 ml santan dari 1 butir kelapa'
          '\n - 1/2 sendok teh garam'
          '\n - 10 tetes pewarna merah muda'

          '\n\n Cara Membuat :'

          '\n\n - Kelapa muda dan alpukat dikeruk lebar serta nangka dipotong-potong.'
          '\n - Sagu mutiara direbus terlebih dahulu.'
          '\n - Rebus hingga mendidih kental manis, gula pasir, santan, pewarna dengan api kecil.'
          '\n - Setelah matang, dinginkan beberapa saat.'
          '\n - Kemudian masukkan sirup ke dalam es serut, aduk rata dan masukkan ke dalam freezer.'
          '\n - Masukkan kelapa muda, sagu mutiara, tape ketan hitam, buah dan tape singkong ke dalam wadah.'
          '\n - Campurkan dan aduk dengan kental manis.'
          '\n - Es doger siap disajikan.',
    imageAsset: 'assets/images/doger.png',
  ),
  TourismPlace(
    name: 'Bandrek',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 100 gram jahe, bakar memarkan'
          '\n - 200 gram gula aren secukupnya, ditumbuk halus'
          '\n - 500 ml air'
          '\n - 2 lembar daun pandan'
          '\n - 1 sdt cengkeh'
          '\n - 1/2 sdt garam'
          '\n - 5 cm kayu manis'

          '\n\n Cara Membuat :'

          '\n\n - Rebus air bersama dengan bahan-bahan yang lainnya seperti gula aren, jahe, kayu manis, dan daun pandan. Jangan lupa untuk menambahkan garam dan juga cengkeh.'
          '\n - Rebus air sampai mendidih dan aromanya menjadi harum. Sesekali jangan lupa untuk mengaduk air.'
          '\n - Angkat air yang sudah mendidih kemudian saring.'
          '\n - Bandrek lebih nikmat jika disajikan selagi panas dengan kacang rebus.',
    imageAsset: 'assets/images/bandrek.png',
  ),
  TourismPlace(
   name: 'Bajigur',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n -  1 liter santan'
          '\n - 100 gr Jahe bakar'
          '\n - 200 gr Gula merah'
          '\n - 1 sdm Kopi bubuk hitam'
          '\n - 1/4 sdt Garam'
          '\n - 2 lembar Daun pandan'
          '\n - 1 batang Kayu manis'

          '\n\n Cara Membuat :'

          '\n\n - Langkah pertama, Siapkan panci lalu masukkan jahe bakar yang sudah di geprek, 200 gr gula merah yang sudah dihaluskan, 1 batang kayu manis, 2 lembar daun pandan, 1 liter santan dan 1 sdm kopi bubuk hitam.'
          '\n - Kemudian, masak dengan api sedang sambil di aduk-aduk agar santan tidak pecah.'
          '\n - Tunggu sampai air santan mendidih, lalu tambahkan 1/4 sdt garam.'
          '\n - Setelah itu, matikan kompor, saring air bajigur menggunakan saringan.'
          '\n - Selanjutnya, tuangkan bajigur ke dalam gelas atau wadah yang sudah disiapkan.'
          '\n - Bajigur siap untuk di hidangkan.',
    imageAsset: 'assets/images/bajigur.png',
  ),
  TourismPlace(
    name: 'Es Goyobod',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 60 gram tepung hunkwe'
          '\n - 400 ml air'
          '\n - 1/4 sdt garam'
          '\n - 2 tetes pasta strawberry'

          '\n\n Bahan Sirup :'

          '\n\n - 100 gram gula pasir'
          '\n - 1 lembar daun pandan'
          '\n - 200 ml air'
          '\n - 1/4 sdt garam'

          '\n\n Bahan Pelengkap :'

          '\n\n - 2 buah alpukat, kerok daging buahnya'
          '\n - 1 bungkus sagu mutiara atau pacar cina, rebus sebentar'
          '\n - 200 gram tape singkong dipotong-potong dadu'
          '\n - Secukupnya susu kental manis'
          '\n - Es serut atau pecahan es batu'
          '\n\n Apabila ingin lebih spesial, maka bisa tambahkan tape ketan hitam, kolang-kaling, kelapa muda bahkan santan atau sesuai selera deh.'

          '\n\n Cara Membuat :'

          '\n\n - Siapkan panci kecil, lalu tuangkan air, hunkwe, garam dan pasta strawberry, selanjutnya aduk rata dan didihkan sambil terus diaduk-aduk.'
          '\n - Masak sampai adonan mengental, kemudian tuang ke dalam loyang atau wadah persegi. Biarkan adonan dingin dan mengeras, selanjutnya tinggal dipotong-potong dadu.'
          '\n - Begitu juga dengan bahan sirup gula, didihkan sambil diaduk-aduk hingga gula larut, lalu matikan api dan biarkan dingin.'
          '\n - Tahap terakhir tentunya adalah penyajian, siapkan mangkuk saji, tata potongan hunkwe, alpukat, sagu mutiara, tape singkong, serutan atau pecahan es batu, yang kemudin disirami dengan sirup gula dan susu kental manis.'
          '\n - Es goyobod yang enak dan segar namun sederhana sudah bisa kita sajikan di rumah.',
    imageAsset: 'assets/images/goyobod.png',
  ),
  TourismPlace(
    name: 'Es Oyen',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - Alpukat 1 buah'
          '\n - Nangka 1 genggam'
          '\n - Kelapa muda 1 buah, pisahkan airnya dan kerok tipis dagingnya'
          '\n - gar-agar siap pakai 1 sachet'
          '\n - Melon 1/2 buah'
          '\n - Pacar china secukupnya'
          '\n -  Susu kental manis secukupnya'
          '\n - Sirup cocopandan secukupnya'

          '\n\n Cara Membuat :'

          '\n\n - Potong alpukat, nangka, kelapa muda, melon, dan agar-agar sesuai ukuran yang diinginkan.'
          '\n - Rebus pacar china hingga empuk.'
          '\n - Campurkan air mineral dan gula, rebus hingga mendidih. Kemudian, diamkan hingga dingin.'
          '\n - Siapkan gelas saji. Masukkan potongan buah, agar-agar, dan pacar china yang sudah direbus.'
          '\n - Tuang air gula, sirup, dan susu kental manis di dalam gelas saji.'
          '\n - Terakhir, masukkan es batu agar es oyen dapat disantap selagi dingin.'
          '\n - Es oyen siap disajikan',
    imageAsset: 'assets/images/oyen.png',
  ),
  TourismPlace(
    name: 'Es Cincau',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 40 lembar daun cincau'
          '\n - 300 ml air '
          '\n - Santan (bisa ganti dengan fibercreme)'
          '\n - Pandan'
          '\n - Gula jawa/gula aren'
          '\n - Es batu'

          '\n\n Cara Membuat :'

          '\n\n - Remas-remas daun cincau atau bisa dimasukkan ke blender.'
          '\n - Rebus air sampai matang dan mendidih.'
          '\n - Peras daun cincau dan tambahkan air matang sedikit demi sedikit (gunakan saringan seperti memeras santan).'
          '\n - Endapkan cincau semalam.'
          '\n - Untuk membuat es cincau hijau: Rebus santan lalu campur dengan daun pandan.'
          '\n - Rebus gula aren atau gula jawa.'
          '\n - Tuang santan atau fibercreme ke dalam gelas, masukkan air gula, masukkan cincau hijau, tambahkan es batu.'
          '\n - Es cincau hijau homemade siap disajikan.',
    imageAsset: 'assets/images/cincau.png',
  ),
];
