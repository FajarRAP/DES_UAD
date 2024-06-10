import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/app_bar_sub_menu_akademik.dart';
import '../../widgets/base_container.dart';
import '../../widgets/body_sub_menu_akademik.dart';
import '../../widgets/card_title_sub_menu_akademik.dart';
import '../../widgets/rounded_icon_container.dart';

class MahasiswaAsingPage extends StatelessWidget {
  const MahasiswaAsingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'Mahasiswa Asing',
        ),
        children: [
          BaseContainer.styledSubMenuAkademik(
            isRow: true,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Mahasiswa Asing',
                      style: Styles.kPublicRegularBodyTwo),
                  Text('10.524', style: Styles.kPublicSemiBoldHeadingTwo),
                ],
              ),
              const RoundedIconContainer(
                  side: 64,
                  color: kLightGrey100,
                  iconColor: kGrey100,
                  asset: icFrame),
            ],
          ),
          kGap16,
          BaseContainer.styledSubMenuAkademik(
            children: const [
              CardTitleSubMenuAkademik(title: 'Tren Mahasiswa Asing'),
            ],
          ),
          kGap16,
          BaseContainer.styledSubMenuAkademik(
            children: const [
              CardTitleSubMenuAkademik(title: 'Persebaran Negara'),
            ],
          ),
        ],
      ),
    );
  }
}