import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';
import 'package:rovanna_app/core/utils/approuter.dart';
import 'package:rovanna_app/core/utils/constans.dart';
import 'package:rovanna_app/features/profile/presentation/widgets/customebar.dart';

// ignore: must_be_immutable
class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    List profile = [
      Customebar(
          icon: const Icon(Icons.edit),
          text: 'Edit Profile',
          ontap: () {
            // GoRouter.of(context).push(AppRouter.kAboutUsScreen);
          }),
      Customebar(
        icon: const Icon(FontAwesomeIcons.box),
        text: 'My orders',
        ontap: () {
          // GoRouter.of(context).push(AppRouter.kAboutUsScreen);
        },
      ),
      Customebar(
        icon: const Icon(Icons.translate),
        text: 'Change Languages',
        ontap: () {
          // GoRouter.of(context).push(AppRouter.kAboutUsScreen);
        },
      ),
      Customebar(
        icon: const Icon(Icons.call),
        text: 'Contact Us',
        ontap: () {
          // GoRouter.of(context).push(AppRouter.kAboutUsScreen);
        },
      ),
      Customebar(
        icon: const Icon(Icons.info),
        text: 'About Us',
        ontap: () {
          GoRouter.of(context).push(AppRouter.kAboutUsScreen);
        },
      ),
      Customebar(
        icon: const Icon(FontAwesomeIcons.coins),
        text: 'Became A Seller',
        ontap: () {
          // GoRouter.of(context).push(AppRouter.kAboutUsScreen);
        },
      ),
      Customebar(
        icon: const Icon(Icons.logout),
        text: 'Logout',
        ontap: () {
          // GoRouter.of(context).push(AppRouter.kAboutUsScreen);
        },
      ),
    ];

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kPrimaryColor,
          title: const Text('Profile'),
        ),
        // drawer: const Customedrawer(),
        body: ListView.builder(
            itemCount: profile.length,
            itemBuilder: (context, index) {
              return profile[index];
            }));
  }
}
