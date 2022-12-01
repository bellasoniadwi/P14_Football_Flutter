import 'package:flutter/material.dart';
import 'package:tugas_pertemuan_14/content.dart';
import 'package:tugas_pertemuan_14/schedule.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Football(),
    );
  }
}

class Football extends StatefulWidget {
  _Football createState() => _Football();
}

class _Football extends State<Football> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bella'sApp"),
          backgroundColor: Colors.red,
          bottom: TabBar(tabs: [
            Tab(
              text: 'BERITA TERBARU',
            ),
            Tab(
              text: 'JADWAL PERTANDINGAN',
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Container(child: Profile(),),
            Container(child: Jadwal(),)
          ],
        ),
      ),
    );
  }
}

class Profile extends StatefulWidget {
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
          children: [
            const Image(
              image: NetworkImage(
                  'https://asset.kompas.com/crops/fRn4YxJrkb_-50zcZ4SHQ0NU6yA=/235x0:768x355/750x500/data/photo/2021/12/19/61be59cc33633.jpg'),
              width: double.infinity,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              // Horizontal ListView
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                  children: [
                  Image(
                    image: NetworkImage('https://akcdn.detik.net.id/community/media/visual/2022/10/13/barcelona-1.jpeg?w=700&q=90'),
                    height: 100,
                    width: 150,
                  ),
                  Image(
                    image: NetworkImage('https://frontofficesports.com/wp-content/uploads/2022/05/FOS-PM-22-5.25-FC-Barcelona-Goldman-Sachs.jpg'),
                    width: 150,
                    height: 100,
                  ),
                 Image(
                    image: NetworkImage('https://akcdn.detik.net.id/community/media/visual/2022/09/20/barcelona-3.jpeg?w=700&q=90'),
                    width: 150,
                    height: 100,
                  ),
                  Image(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCiIgK1lD2aDBa33HJcYFeoKkB95LL2dY3HaKpT9Mbqa7PEs5kLuDvDZhKk37s5dhRXN8&usqp=CAU'),
                    width: 160,
                    height: 120,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Barcelona Squad 2022/2023'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(2),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            Content(
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR76bXrbJLPY6Dp7cLQDyTMECiQcME7a6jNu7wkrfIYnhHQwQR8RX24MPkguIfiyLnBWqU&usqp=CAU',
              name: 'Arnau Tenas',
              description : 'Arnau Tenas Urena adalah pemain sepak bola profesional yang bermain sebagai penjaga gawang klub La Liga Barcelona dan tim nasional Spanyol',
            ),
            const SizedBox(height: 5),
            Content(
              imageUrl: 'https://akcdn.detik.net.id/community/media/visual/2021/06/01/eric-garcia-1_169.jpeg?w=700&q=90',
              name: 'Eric Garcia',
              description: 'Eric García Martret adalah pemain sepak bola profesional yang bermain sebagai bek tengah untuk klub La Liga Barcelona dan tim nasional Spanyol',
            ),
            const SizedBox(height: 5),
            Content(
              imageUrl: 'https://akcdn.detik.net.id/community/media/visual/2022/06/08/ferran-torres_169.jpeg?w=700&q=90',
              name: 'Ferran Torres',
              description: 'Pemain sayap satu ini bernama lengkap Ferran Torres Garcia. Ferran Torres terbiasa bermain di posisi sayap kiri dan kanan, ataupun penyerang depan.',
            ),
            const SizedBox(height: 5),
            Content(
              imageUrl: 'https://t-2.tstatic.net/gorontalo/foto/bank/images/Pedri-Barca.jpg',
              name: 'Pedro Gonzalez',
              description: 'Pedro González López, lebih dikenal sebagai Pedri, adalah seorang pemain sepak bola profesional yang bermain sebagai gelandang tengah',
            ),
            const SizedBox(height: 5),
            Content(
              imageUrl: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt8a64248a03b56a08/62ab17588a79a024f97103c7/20220616_Gavi.jpg?auto=webp&format=jpg&quality=100',
              name: 'Pablo Gavira',
              description: 'Pablo Martín Páez Gavira dikenal secara luas sebagai Gavi adalah seorang pemain sepak bola yang mengisi posisi gelandang serang',
            ),
          ],
        );
  }
}

class Jadwal extends StatefulWidget {
  _Jadwal createState() => _Jadwal();
}

class _Jadwal extends State<Jadwal> {
  @override
  Widget build(BuildContext context) {
    return ListView(
          children: [
            const SizedBox(height: 5),
            Schedule(
              time: '20 November 2022\n23.00 WIB',
              match: 'Qatar vs Ekuador',
              place : 'Al Bayt Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '21 November 2022\n20.00 WIB',
              match: 'Inggris vs Iran',
              place : 'Khalifa International Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '22 November 2022\n17.00 WIB',
              match: 'Argentina vs Arab Saudi',
              place : 'Lusail Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '23 November 2022\n23.00 WIB',
              match: 'Spanyol vs Kostarika',
              place : 'Al Thumama Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '24 November 2022\n20.00 WIB',
              match: 'Uruguay vs Korea Selatan',
              place : 'Education City Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '25 November 2022\n02.00 WIB',
              match: 'Brazil vs Serbia',
              place : 'Lusail Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '26 November 2022\n02.00 WIB',
              match: 'Prancis vs Denmark',
              place : 'Ras Abu Aboud Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '27 November 2022\n20.00 WIB',
              match: 'Belgia vs Maroko',
              place : 'Al Thumama Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '28 November 2022\n02.00 WIB',
              match: 'Spanyol vs Jerman',
              place : 'Al Bayt Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '29 November 2022\n02.00 WIB',
              match: ' Portugal vs Uruguay',
              place : 'Lusail Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '30 November 2022\n22.00 WIB',
              match: 'Australia vs Denmark',
              place : 'Al Janoub Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '01 Desember 2022\n22.00 WIB',
              match: 'Kroasia vs Belgia',
              place : 'Ahmad Bin Ali Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '02 Desember 2022\n02.00 WIB',
              match: 'Jepang vs Spanyol',
              place : 'Khalifa International Stadium',
            ),
            const SizedBox(height: 5),
            Schedule(
              time: '03 Desember 2022\n02.00 WIB',
              match: 'Kamerun vs Brasil',
              place : 'Lusail Stadium',
            ),
          ],
        );
  }
}