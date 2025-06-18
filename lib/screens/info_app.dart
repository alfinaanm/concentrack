import 'package:flutter/material.dart';

class InformasiAplikasiScreen extends StatelessWidget {
  const InformasiAplikasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Informasi Aplikasi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Icon(Icons.info, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 30),
            const Text(
              'Concentrack merupakan Aplikasi monitoring sinyal gelombang otak secara real-time. Aplikasi ini berguna untuk melakukan monitoring konsentrasi, terutama konsentrasi belajar terutama pada siswa.\n\n'
              'Aplikasi Concentrack merupakan hasil Project Skripsi yang dikembangkan oleh Alfina Nailal Muna dan Muhammad David Akbar, mahasiswa S.Tr. Teknologi Rekayasa Komputer, yang dibimbing oleh Bapak Prayitno dan Bapak Nurseno.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
