import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:sphero_swarm_interface/screens/moleculeCanvas.dart';
import 'package:sphero_swarm_interface/services/storage.dart';

class CurrentMolecule extends StatefulWidget {
  const CurrentMolecule({super.key});

  @override
  State<CurrentMolecule> createState() => _CurrentMoleculeState();
}

class _CurrentMoleculeState extends State<CurrentMolecule> {
  final storage = LocalStorage();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await storage.setString("currentMolecule", "H\u2082O");
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: storage.getString("currentMolecule"),
        builder: (context, snapshot) {
          if ((snapshot.connectionState == ConnectionState.done) &&
              (snapshot.hasData)) {
            return Material(
              child: SafeArea(
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(40, 50, 30, 0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Current Molecule: ',
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                snapshot.data.toString(),
                                style: const TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 50,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              height: MediaQuery.of(context).size.height * 0.30,
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 3)),
                                child: Center(
                                  child: CustomPaint(
                                    size: Size.infinite,
                                    painter: moleculeCanvas(),
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.fromLTRB(30, 10, 30, 10)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                ),
                                child: const Text(
                                  "Edit",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.fromLTRB(30, 10, 30, 10)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red),
                                ),
                                child: const Text(
                                  "Delete",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ))),
            );
          }
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
