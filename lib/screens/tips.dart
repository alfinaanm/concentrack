import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F3),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8B98B1),
        title: const Text('Tips Meningkatkan Konsentrasi'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildTipCard(
            'Teknik Pomodoro',
            'Bekerja selama 25 menit, lalu istirahat 5 menit. Setelah 4 siklus, ambil istirahat lebih panjang (15-30 menit).',
            Icons.timer,
            Colors.orange[100]!,
          ),
          const SizedBox(height: 15),
          _buildTipCard(
            'Meditasi Fokus',
            'Lakukan meditasi 10 menit setiap pagi untuk melatih pikiran agar lebih fokus sepanjang hari.',
            Icons.self_improvement,
            Colors.green[100]!,
          ),
          const SizedBox(height: 15),
          _buildTipCard(
            'Lingkungan Kerja yang Baik',
            'Pastikan tempat kerja Anda rapi, cukup pencahayaan, dan minim gangguan.',
            Icons.workspaces,
            Colors.blue[100]!,
          ),
          const SizedBox(height: 15),
          _buildTipCard(
            'Hidrasi yang Cukup',
            'Minum air secara teratur karena dehidrasi dapat mengurangi konsentrasi.',
            Icons.local_drink,
            Colors.lightBlue[100]!,
          ),
          const SizedBox(height: 15),
          _buildTipCard(
            'Olahraga Rutin',
            'Aktivitas fisik meningkatkan aliran darah ke otak dan meningkatkan fokus.',
            Icons.directions_run,
            Colors.purple[100]!,
          ),
        ],
      ),
    );
  }

  Widget _buildTipCard(
    String title,
    String content,
    IconData icon,
    Color color,
  ) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Icon(icon, size: 30),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(content),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
