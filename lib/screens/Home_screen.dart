import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sectionPadding = const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 8,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Teater'), centerTitle: false),
      backgroundColor: Colors.grey[100],
      body: ListView(
        padding: const EdgeInsets.only(top: 8, bottom: 16),
        children: [
          Padding(
            padding: sectionPadding,
            child: _CitySection(
              title: 'MEDAN',
              theaters: const [
                'XXI Cinema',
                'Pondok Kelapa 21',
                'CGV',
                'Cinepolis',
                'CP Mall',
                'Hermes',
              ],
            ),
          ),
          Padding(
            padding: sectionPadding,
            child: _CitySection(
              title: 'MALANG',
              theaters: const [
                'Cinepolis Malang Town Square',
                'CGV Malang City Point',
                'MOVIMAX Dinoyo',
                'Transmart MX Mall XXI',
              ],
            ),
          ),
          Padding(
            padding: sectionPadding,
            child: _CitySection(
              title: 'SURABAYA',
              theaters: const [
                'Ciputra World XXI',
                'Grand City XXI',
                'SUTOS XXI',
                'CGV BG Junction',
                'CGV Maspion Square',
                'Cinépolis City of Tomorrow',
                'Movimax Kaza City Mall',
              ],
            ),
          ),
          Padding(
            padding: sectionPadding,
            child: _CitySection(
              title: 'JAKARTA',
              theaters: const [
                'Cinema XXI',
                'Blok M Square 21',
                'Metropole XXI',
                'CGV Pacific Place',
                'CGV Grand Indonesia',
                'Cinepolis Kalibata City Square',
                'Cinepolis Gajah Mada Plaza',
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CitySection extends StatelessWidget {
  final String title;
  final List<String> theaters;

  const _CitySection({required this.title, required this.theaters});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          iconColor: Colors.indigo,
          collapsedIconColor: Colors.indigo,
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          childrenPadding: const EdgeInsets.only(left: 8, right: 8, bottom: 12),
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
          children: [
            for (int i = 0; i < theaters.length; i++) ...[
              ListTile(
                dense: true,
                leading: const Icon(
                  Icons.movie_outlined,
                  color: Colors.black54,
                ),
                title: Text(theaters[i]),
                onTap: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              if (i != theaters.length - 1)
                const Divider(height: 4, indent: 48, endIndent: 8),
            ],
          ],
        ),
      ),
    );
  }
}
