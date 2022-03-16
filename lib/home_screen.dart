import 'package:flutter/material.dart';
import 'package:masakan_sunda/detail_screen.dart';
import 'package:masakan_sunda/model/tourism_place.dart';

class HomeScreen extends StatelessWidget {
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
    name: 'Sayur Asem',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 1/2 buah terong, potong-potong'
          '\n - 1/2 buah labu siam, potong-potong'
          '\n - 1/2 buah jagung manis, potong-potong'
          '\n - 1 genggam nangka muda'
          '\n - 1 genggam daun melinjo'
          '\n - 1 genggam buah melinjo'
          '\n - 1 genggam kacang panjang'
          '\n - 1 genggam kacang tanah'
          '\n - 1 sdm gula merah'
          '\n - 700 ml air'
          '\n - 3 sdm air asem jawa'
          '\n - 3 lembar daum salam'
          '\n - 1 ruas jari lengkuas'
          '\n - gula, garam secukupnya'

          '\n\n Bumbu Halus :'

          '\n\n - 3 buah cabai merah, buang biji'
          '\n - 2 buah rawit merah, buang biji'
          '\n - 2 butir kemiri, sangrai'
          '\n - 4 buah bawang merah'
          '\n - 2 siung bawang putih'
          '\n - 1 sdt terasi'

          '\n\n Cara Membuat :'

          '\n\n - Cuci bersih semua bahan sayuran, tiriskan.'
          '\n - Siapkan panci, rebus terlebih dahulu sayuran yang bertekstur keras nangka muda, terong, labu siam, jagung muda dan buah melinjo sampai empuk atau matang.'
          '\n - Kemudian masukkan bumbu halus, lengkuas, daun salam, air asam jawa.'
          '\n - Masukkan kacang panjang dan daun melinjo. Tambahkan gula dan garam secukupnya. Tes rasa.'
          '\n - Matikan api. Sayur asem siap disantap.',
    imageAsset: 'assets/images/sayurasem.png',
    
  ),
  TourismPlace(
    name: 'Empal Gepuk Daging',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 1 kg daging sapi, potong cuci bersih'
          '\n - 3 lembar daun salam'
          '\n - 4 lembar daun jeruk'
          '\n - 1250 ml santan cair'
          '\n - 250 ml santan kental'
          '\n - 200 gr gula merah, sisir'
          '\n - 4 sdm air asam jawa'
          '\n - garam secukupnya'
          '\n - kaldu bubuk secukupnya'

          '\n\n Bumbu Halus :'

          '\n\n - 15 siung bawang merah'
          '\n - 7 siung bawang putih'
          '\n - 3 ruas lengkuas'
          '\n - 2 batang serai'
          '\n - 5 butir kemiri'
          '\n - 2 sdm ketumbar'
          '\n - 1 sdt merica'

          '\n\n Cara Membuat :'

          '\n\n - Siapkan wajan masukkan santan cair, daging, bumbu halus, daun salam, serai, gula merah, air asam, garam dan kaldu bubuk. Masak sampai mendidih lalu kecilkan api.'
          '\n - Jika daging sudah setengah empuk, masukan santan kental. Masak terus.'
          '\n - Setelah santan menyusut, angkat daging lalu tumbuk hingga seratnya terlihat jelas.'
          '\n - Lalu goreng sebentar saja.'
          '\n - Sajikan dengan taburan bawang goreng.',
    imageAsset: 'assets/images/empalgepuk.png',
  ),
  TourismPlace(
    name: 'Nasi Tutug Oncom',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - nasi putih hangat'
          '\n - 1 kotak oncom bandung'

          '\n\n Bumbu Halus :'

          '\n\n - 2 bawang merah'
          '\n - 2 bawang putih'
          '\n - 4 cabai merah'
          '\n - 5 cabai rawit merah'
          '\n - 2 cm kencur'
          '\n - garam'
          '\n - terasi'

          '\n\n Bahan Pelengkap :'

          '\n\n - kemangi'
          '\n - lalap'
          '\n - sambel'
          '\n - ikan asin'
          '\n - lauk'

          '\n\n Cara Membuat :'

          '\n\n - Hancurkan oncom, tumbuk agar halus.'
          '\n - Tumis bumbu halus dengan minyak bekas goreng ikan asin.'
          '\n - Masukkan oncom yang sudah hancur lalu oseng sebentar dan sisihkan.'
          '\n - Siapkan nasi hangat, campur dengan oncom secukupnya.'
          '\n - Aduk rata dan siap sajikan dengan bahan pelengkap lainnya.',
    imageAsset: 'assets/images/nasitutug.png',
  ),
  TourismPlace(
   name: 'Mie Kocok',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 400 g mi basah gepeng, siap pakai, cuci, tiriskan'
          '\n - 150 g taoge, buang akarnya'
          '\n - 2 sdm daun bawang iris tipis'
          '\n - 2 sdm bawang goreng'
          '\n - air jeruk limau'
          '\n - sambal cabai rawit'

          '\n\n Bumbu Kuah :'

          '\n\n - 2 sdm minyak goreng'
          '\n - 8 siung bawang putih, haluskan'
          '\n - 2.5 liter kaldu sapi'
          '\n - 650 g kikil sapi, rebus hingga empuk, potong dadu 2 cm'
          '\n - 6 cm jahe, memarkan'
          '\n - 1 butir biji pala, pecahkan'
          '\n - 1 sdt merica'
          '\n -  2 sdt garam'
          '\n - 1 sdt gula pasir'


          '\n\n Cara Membuat :'

          '\n\n- Buat kuah terlebih dahulu, panaskan minyak goreng dalam wajan, tumis bawang putih dan jahe sampai harum, angkat, sisihkan.'
          '\n - Rebus kaldu sapi ke dalam panci. Masak hingga mendidih.'
          '\n - Masukkan kikil, pala, merica, garam, gula, dan tumisan bawang putih. Rebus hingga mendidih.'
          '\n - Penyajian: Taruh mi dalam mangkuk saji, tambahkan taoge, siram dengan kuah panas beserta kikil dan sumsumnya.'
          '\n - Taburi daun bawang dan bawang goreng. Tambahkan air jeruk limau. Sajikan selagi hangat dengan pelengkap sambal cabai rawit.',
    imageAsset: 'assets/images/miekocok.png',
  ),
  TourismPlace(
    name: 'Tumis Genjer Oncom',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 2 ikat genjer'
          '\n - 1/4 pot oncom'
          '\n - 2 btg daun bawang iris'
          '\n - 2 buah cabai merah keriting iris serong'
          '\n - 1 buah tomat potong-potong'
          '\n - garam gula pasir dan kaldu bubuk secukupnya'
          '\n - sedikit minyak goreng untuk menumis'

          '\n\n Bumbu Halus :'

          '\n\n - 10 buah cabai rawit'
          '\n - 3 siung bawang merah'
          '\n - 2 siung bawang putih'
          '\n - 2 ruas kencur'

          '\n\n Cara Membuat :'

          '\n\n - Potong-potong genjer, cuci bersih lalu seduh dengan air panas, tiriskan.'
          '\n - Haluskan oncom, sisihkan.'
          '\n - Tumis bumbu halus hingga harum, lalu masukkan potongan daun bawang, potongan tomat, dan cabai merah keriting, aduk sebentar.'
          '\n - Lalu masukkan oncom, aduk hingga oncomnya agak sedikit kering.'
          '\n - Tambahkan garam gula pasir dan kaldu bubuk secukupnya ,tes rasa'
          '\n - Kemudian masukkan genjer aduk sebentar saja, supaya genjer layu dan sedikit kering.'
          '\n - Angkat dan sajikan.',
    imageAsset: 'assets/images/genjeroncom.png',
  ),
  TourismPlace(
    name: 'Pepes Ikan Mas',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 2 ekor ikan mas, cuci bersih, lumuri air jeruk nipis dan garam.'
          '\n - 1 buat tomat, potong kasar'
          '\n - 8 buah cabai rawit utuh'
          '\n - 2 lembar daun salam'
          '\n - 2 lembar daun jeruk, sobek'
          '\n - 1 batang daun bawang iris kasar'
          '\n - daun kemangi secukupnya'
          '\n - daun pisang utk membungkus'
          '\n - lidi/tusuk gigi'

          '\n\n Bumbu Halus :'

          '\n\n - 8 butir bawang merah'
          '\n - 4 siung bawang putih'
          '\n - 4 buah cabai merah keriting'
          '\n - 3 buah cabai rawit'
          '\n - 3 butir kemiri sangrai'
          '\n - seruas kunyit'
          '\n - garam dan gula secukupnya'

          '\n\n Cara Membuat :'

          '\n\n - Bumbu halus yang telah diulek campur dengang daun bawang, tomat iris aduk rata.'
          '\n - Balurkan ikan mas dengan campuran bumbu. Siapkan 2 lembar daun pisang, beri kemangi, daun salam, daun jeruk.'
          '\n - Letakkan ikan diatasnya. Bungkus dan semat dengan lidi, kukus sekitar 30 menit hingga matang.'
          '\n - Angkat, menjelang disajikan bakar pepes ikan di atas teflon/arang.'
          '\n - Angkat dan sajikan segera.',
    imageAsset: 'assets/images/pepesikan.png',
  ),
  TourismPlace(
    name: 'Bakakak Ayam',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 2 ruas kunyit tua, bakar'
          '\n - 4 lembar daun salam'
          '\n - 2 batang serai, geprek kasar'
          '\n - 400-500 ml air'
          '\n - Garam, gula merah, kaldu bubuk secukupnya'

          '\n\n Bumbu Rendaman :'

          '\n\n - 2 ruas kunyit tua, bakar'
          '\n - 2 siung bawang putih'
          '\n - Garam secukupnya'

          '\n\n Bumbu Halus :'

          '\n\n - 10 siung bawang merah'
          '\n - 5 siung bawang putih'
          '\n - 2 cm jahe'
          '\n - 2 cm lengkuas'
          '\n - 3 butir kemiri'
          '\n - 1 sdt ketumbar halus'
          '\n - 1 sdt lada bubuk'
          '\n - 10 buah cabai merah atau sesuai selera'

          '\n\n Cara Membuat :'

          '\n\n - Haluskan bumbu rendaman, balurkan pada ayam. Tuangkan air berlahan sampai benar-benar terendam, diamkan kurang lebih sampai 45 menit.'
          '\n - Tumis bumbu halus hingga terasa harum, masukkan daun salam dan serai tumis sebentar. Masukkan ayam beserta air rendaman, masak hingga mendidih.'
          '\n - Setelah mendidih jangan lupa kecilkan api, tuangkan santan dan beri gula, garam, kaldu bubuk secukupnya sembari koreksi rasa.'
          '\n - Ungkeb ayam hingga empuk dan air asat.'
          '\n - Sisihkan sisa bumbu tadi, beri kecap manis. Oleskan pada ayam, bakar ayam atau cukup memanggangnya di teflon sampai matang.'
          '\n - Siap disajikan dengan lalapan dan sambal sesuai selera.',
    imageAsset: 'assets/images/bakakakayam.png',
  ),
  TourismPlace(
   name: 'Soto Ayam',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 1/2 ekor ayam'
          '\n - 4 lembar daun jeruk'
          '\n - 3 lembar daun salam'
          '\n - 3 lembar daun salam'
          '\n - 4 cm lengkuas digeprek'
          '\n - 1 batang daun bawang diiris tipis'
          '\n - 10 gram daun seledri dicincang halus'
          '\n - 1/2 sendok teh lada bubuk'
          '\n - 1 sendok teh gula pasir'
          '\n - 1 sendok teh penyedap rasa'
          '\n - Garam secukupnya'
          '\n - 2 liter air'
          '\n - Minyak goreng secukupnya'

          '\n\n Bumbu Halus :'

          '\n\n - 6 siung bawang merah'
          '\n - 4 siung bawang putih'
          '\n - 1 ruas kunyit'
          '\n - 4 buah kemiri'
          '\n - 4 cm jahe'

          '\n\n Bahan Pelengkap :'

          '\n\n - 100 gram soun, rendam air panas sebentar sampai setengah matang'
          '\n - 100 gram tauge, cuci bersih'
          '\n - 100 gram kol diiris lembut, cuci bersih'
          '\n - 3 telur rebus, belah menjadi 2 bagian (opsional)'
          '\n - Potongan daun bawang dan daun seledri secukupnya untuk taburan'
          '\n - Bawang goreng secukupnya untuk taburan'
          '\n - 3 buah jeruk nipis dipotong menjadi beberapa bagian secukupnya'
          '\n - Sambal secukupnya'
          '\n - Kecap secukupnya'
          

          '\n\n Cara Membuat :'

          '\n\n - Potong-potong ayam sesuai selera lalu cuci dengan air bersih. Sisihkan.'
          '\n - Panaskan sedikit minyak untuk menumis dalam wajan. Tumis bumbu halus sampai benar-benar harum.'
          '\n - Tambahkan daun jeruk, daun salam, serai, dan lengkuas. Tumis sebentar sampai agak layu.'
          '\n - Tuang air ke dalam wajan lalu tambahkan potongan ayam yang sudah kamu bersihkan tadi.'
          '\n - Masak hingga kuah mendidih, ayam matang, dan dagingnya empuk. Setelah ayam matang, angkat dan tiriskan. Sisihkan ayam.'
          '\n - Sedangkan air rebusan ayamnya akan digunakan untuk membuat kuah soto.'
          '\n - Selanjutnya, bumbui kuah dengan lada bubuk, gula pasir, penyedap rasa, dan garam. Aduk rata dan jangan lupa koreksi rasanya.'
          '\n - Terakhir, tambahkan potongan daun seledri dan daun bawang ke dalam kuah lalu masak sampai matang. Kuah soto ayam siap digunakan.'
          '\n - Dalam wajan lain, panaskan minyak secukupnya untuk menggoreng ayam.'
          '\n - Goreng ayam yang sudah diungkep dengan bumbu kuning tadi sampai kering bagian luarnya. Setelah matang, angkat dan tiriskan.'
          '\n - Kemudian suwir-suwir ayam yang sudah digoreng. Taruh ke dalam piring dan sisihkan. Suwiran ayam siap digunakan.'
          '\n - Sedangkan untuk membuat sambal soto, rebus cabai merah, cabai rawit, bawang merah, bawang putih secukupnya. Lalu haluskan dengan blender. Sambal siap digunakan.'
          '\n - Siapkan piring saji, kemudian masukkan soun, kol, tauge, dan suwiran ayam diatasnya sesuai selera.'
          '\n - Lalu siram dengan kuah soto secukupnya.'
          '\n - Tambahkan diatasnya dengan potongan telur rebus, taburan bawang goreng, daun seledri, dan daun bawang secukupnya.'
          '\n - Beri air perasan jeruk nipis biar segar. Terakhir tambahkan sambal dan kecap sesuai selera.'
          '\n - Soto ayam siap disajikan selagi hangat.',
    imageAsset: 'assets/images/soto.png',
  ),
  TourismPlace(
     name: 'Lotek',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 1 buah wortel ukuran kecil'
          '\n - 1 ikat sayur bayam'
          '\n - 2 lembar kubis, iris tipis-tipis'
          '\n - 1 buah tomat iris tipis'
          '\n - 1 genggam kecambah'
          '\n - 4 buah tahu'
          '\n - 4 buah cabai rawit'
          '\n - 1 genggam kacang tanah'
          '\n - 1 cm kencur'
          '\n - 1 lembar daun jeruk'
          '\n - 1 sendok teh terasi'
          '\n - Garam secukupnya'
          '\n - Asam jawa secukupnya'
          '\n - Air secukupnya.'

          '\n\n Cara Membuat :'

          '\n\n - Langkah pertama adalah rebus semua sayuran yang sudah disiapkan kecuali kubis, jika sudah direbus, tiriskan. Setelah itu, sangrai kacang tanah hingga matang.'
          '\n - Haluskan cabai, kencur, bawang putih, terasi, daun jeruk, garam sampai halus. Kemudian masukkan kacang tanah dan asa, jawa lalu haluskan kembali. Jika sudah halus, Anda bisa tambahkan gula merah secukupnya dan pastikan bumbu ini tidak terlalu encer.'
          '\n - Masukkan semua sayuran yang sudah disediakan dan tomat lalu aduk hingga rata dengan bumbu. Hidangkan di piring bersama dengan ketupat dan kerupuk. Jadi deh lotek Sunda siap untuk disantap.',
    imageAsset: 'assets/images/lotek.png',
  ),
   TourismPlace(
     name: 'Terong Balado',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 4 buah terong ungu'
          '\n - 6 siung bawang merah'
          '\n - 4 siung bawang putih'
          '\n - 10 buah cabai merah besar'
          '\n - 5 buah cabai keriting atau sesuai selera'
          '\n - 2 buah tomat merah'
          '\n - Garam secukupnya'
          '\n - Gula secukupnya.'

          '\n\n Cara Membuat :'

          '\n\n - Langkah pertama adalah potong terong ungu menjadi 4 bagian dengan panjang masing-masing kurang lebih 10 cm. Setelah dipotong, rendam terong dalam air agar terong tidak berubah warna.'
          '\n - Setelah itu, siapkan wajan dengan minyak secukupnya untuk menggoreng terong.'
          '\n - Sementara terong digoreng, Anda bisa haluskan bumbu-bumbu yang sudah disiapkan dengan cara diuleg atau diblender sesuai dengan selera.'
          '\n - Setelah terong dan bumbu siap, siapkan wajan dan beri minyak sedikit saja untuk menumis bumbu. Masukkan bumbu ke dalam wajan hingga mengeluarkan aroma yang harum. Setelah itu, masukkan terong yang sudah digoreng dan aduk hingga terong balado benar-benar matang.',
    imageAsset: 'assets/images/terong.png',
  ),
   TourismPlace(
     name: 'Nasi Liwet',
    description:
    
    
          '\n\n Bahan - Bahan :'

          '\n\n - 6 gelas beras'
          '\n - 1 1/2 sachet kaldu bubuk rasa ayam'
          '\n - 8 siung bawang putih, diiris'
          '\n - 8 siung bawang merah, diiris'
          '\n - 6 lembar daun salam'
          '\n - 5 lembar daun jeruk'
          '\n - 10 cabai rawit merah'
          '\n - 2 papan petai'
          '\n - 100 gr teri medan, goreng kering  '
          '\n - garam secukupnya'
          '\n - air secukupnya'

          '\n\n Cara Membuat :'

          '\n\n - Cuci beras seperti biasa, masukkan kaldu bubuk, aduk, sisihkan.'
          '\n - Tumis daun salam, daun jeruk, sereh, bawang merah dan bawang putih hingga harum, beri garam secukupnya.'
          '\n - Kemudian tambahkan petai dan cabai rawit. Tumis sebentar lalu matikan kompor.'
          '\n - Masukkan tumisan bumbu tersebut ke dalam beras beserta minyaknya, beri air selayaknya kita mau masak nasi, aduk.'
          '\n - Masak seperti masak nasi biasa.'
          '\n - Kalau sudah matang, biarkan sebentar selama 5 menit, lalu aduk nasinya, tutup kembali biarkan selama 5 menit. Taburi dengan teri medan. Nasi liwet siap disajikan.',
    imageAsset: 'assets/images/nasiliwet.png',
  ),
];
