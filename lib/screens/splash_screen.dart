import 'package:flutter/material.dart';
import 'package:sphero_swarm_interface/screens/currentMolecule.dart';
import 'package:sphero_swarm_interface/screens/moleculesList.dart';
import 'package:sphero_swarm_interface/services/storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final storage = LocalStorage();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder(
    //     future: storage.getBool("moleculeExists"),
    //     builder: (context, snapshot) {
    //       if (snapshot.hasData) {
    //         if (snapshot.data == true) {
    //           return const Scaffold(
    //             body: Center(
    //               child: Text("Molecule exists"),
    //             ),
    //           );
    //         } else {
    //           return const Scaffold(
    //             body: Center(
    //               child: Text("Molecule does not exist"),
    //             ),
    //           );
    //         }
    //       } else {
    //         return const Scaffold(
    //           body: Center(
    //             child: CircularProgressIndicator(),
    //           ),
    //         );
    //       }
    //     });
    return MoleculesList();
  }
}
