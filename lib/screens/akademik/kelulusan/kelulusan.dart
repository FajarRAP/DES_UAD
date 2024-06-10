import 'package:flutter/material.dart';

import '../../../core/constant_finals.dart';
import '../../widgets/app_bar_sub_menu_akademik.dart';
import '../../widgets/base_container.dart';
import '../../widgets/body_sub_menu_akademik.dart';
import '../../widgets/card_title_sub_menu_akademik.dart';
import '../../widgets/rounded_icon_container.dart';

class KelulusanPage extends StatelessWidget {
  const KelulusanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: BodySubMenuAkademik(
        appBar: const AppBarSubMenuAkademik(
          title: 'Kelulusan Mahasiswa',
        ),
        children: [
          BaseContainer.styledSubMenuAkademik(
            isRow: true,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Lulus Tepat Waktu 2024',
                      style: Styles.kPublicRegularBodyTwo),
                  Text('320', style: Styles.kPublicSemiBoldHeadingTwo),
                ],
              ),
              const RoundedIconContainer(
                  side: 64,
                  color: kLightGrey100,
                  iconColor: kGrey100,
                  asset: icTeacher),
            ],
          ),
          kGap16,
          BaseContainer.styledSubMenuAkademik(
            children: const [
              CardTitleSubMenuAkademik(title: 'Tren Kelulusan Tepat Waktu'),
            ],
          ),
          kGap16,
          BaseContainer.styledSubMenuAkademik(
            children: const [
              CardTitleSubMenuAkademik(
                  title: 'Perbandingan Kelulusan Dengan Total Mahasiswa'),
            ],
          ),
        ],
      ),
    );
  }
}