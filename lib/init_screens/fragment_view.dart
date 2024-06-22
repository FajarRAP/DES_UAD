import 'package:des_uad/core/constant_finals.dart';
import 'package:des_uad/screens/akademik/akademik.dart';
import 'package:des_uad/screens/home/home.dart';
import 'package:des_uad/screens/mutu/mutu.dart';
import 'package:des_uad/screens/prestasi/prestasi.dart';
import 'package:des_uad/screens/sdm/sdm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/constant_finals.dart';
import '../screens/akademik/akademik.dart';
import '../screens/home/home.dart';
import '../screens/mutu/mutu.dart';
import '../screens/prestasi/prestasi.dart';

class FragmentPage extends StatefulWidget {
  const FragmentPage({super.key});

  @override
  State<FragmentPage> createState() => _FragmentPageState();
}

class _FragmentPageState extends State<FragmentPage> {
  final pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    const pages = [
      HomeScreen(),
      AkademikPage(),
      SumberDayaManusia(),
      MutuPage(),
      PrestasiPage(),
    ];

    final destinations = [
      NavigationDestination(
        icon: SvgPicture.asset(icHome),
        label: 'Home',
        selectedIcon: SvgPicture.asset(
          icHome,
          colorFilter: const ColorFilter.mode(kBlue, BlendMode.srcIn),
        ),
      ),
      NavigationDestination(
        icon: SvgPicture.asset(icTeacherOutline),
        label: 'Akademik',
        selectedIcon: SvgPicture.asset(
          icTeacherOutline,
          colorFilter: const ColorFilter.mode(kBlue, BlendMode.srcIn),
        ),
      ),
      NavigationDestination(
        icon: SvgPicture.asset(icProfileTwoUserOutline),
        label: 'SDM',
        selectedIcon: SvgPicture.asset(
          icProfileTwoUserOutline,
          colorFilter: const ColorFilter.mode(kBlue, BlendMode.srcIn),
        ),
      ),
      NavigationDestination(
        icon: SvgPicture.asset(icChart),
        label: 'Mutu',
        selectedIcon: SvgPicture.asset(
          icChart,
          colorFilter: const ColorFilter.mode(kBlue, BlendMode.srcIn),
        ),
      ),
      NavigationDestination(
        icon: SvgPicture.asset(icMedalOutline),
        label: 'Ranking',
        selectedIcon: SvgPicture.asset(
          icMedalOutline,
          colorFilter: const ColorFilter.mode(kBlue, BlendMode.srcIn),
        ),
      ),
    ];

    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) => setState(
          () => currentPage = value,
        ),
        children: pages,
      ),
      floatingActionButton: Container(
        decoration: const BoxDecoration(color: kWhite),
        width: double.infinity,
        height: 68,
        child: NavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedIndex: currentPage,
          destinations: destinations,
          surfaceTintColor: Colors.transparent,
          onDestinationSelected: (value) {
            pageController.jumpToPage(value);
            setState(() => currentPage = value);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
