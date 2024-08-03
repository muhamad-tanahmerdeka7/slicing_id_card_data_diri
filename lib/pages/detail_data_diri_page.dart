// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/data_diri.dart';

class DetailDataDiri extends StatefulWidget {
  // ini kita buat variable penampung nya untuk memanggil data diri yang ada di home_page
  // final DataDiri dataDiri; jika merah kita butuh constructor
  final DataDiri dataDiri;
  const DetailDataDiri({
    super.key,
    required this.dataDiri,
  });

  @override
  State<DetailDataDiri> createState() => _DetailDataDiriState();
}

class _DetailDataDiriState extends State<DetailDataDiri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.dataDiri.division}'),
        elevation: 2,
        centerTitle: true,
        
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            widget.dataDiri.nama,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            widget.dataDiri.email,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            widget.dataDiri.phone,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            widget.dataDiri.address,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Container(
            width: 200,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  image: AssetImage(widget.dataDiri.photo), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blueGrey[100],
            ),
            child: Text(
              widget.dataDiri.job,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
