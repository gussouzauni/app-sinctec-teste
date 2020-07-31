import 'package:app_sintec/app/modules/profile/widgets/customBarProfile.dart';
import 'package:app_sintec/app/modules/profile/widgets/listViewCustomProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            AppBarCustomProfile(),
            ListViewCustomProfile(),
          ],
        ),
      ),
    );
  }
}
