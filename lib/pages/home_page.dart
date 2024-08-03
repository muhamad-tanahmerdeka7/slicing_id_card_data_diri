import 'package:data_card_id/pages/detail_data_diri_page.dart';
import 'package:flutter/material.dart';

import '../widgets/data_diri.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Data Card ID',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        // elevation: 2,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          //   return ListTile( biar kelihatan elegan listile di bungkus wrap widget Card
          //     title: Text(listDataDiri[index].division),
          //   );
          // },
          //  return Card(ketika ingin melempar ke page lain Card di bungkus
          // bingkus dengan InkWell
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailDataDiri(
                  dataDiri: listjob[index],
                );
              }));
            },
            child: Card(
              child: ListTile(
                title: Text(listjob[index].division,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text(
                  '${listjob[index].nama}\n${listjob[index].phone}\n${listjob[index].address}',
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(listjob[index].photo),
                  radius: 30,
                ),
              ),
            ),
          );
        },
        itemCount: listjob.length,
      ),
    );
  }
}
