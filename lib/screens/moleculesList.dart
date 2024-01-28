import 'package:flutter/material.dart';

class MoleculesList extends StatefulWidget {
  const MoleculesList({Key? key}) : super(key: key);

  @override
  State<MoleculesList> createState() => _MoleculesListState();
}

class _MoleculesListState extends State<MoleculesList> {
  final List<String> molecules = ["Water", "Benzene", "Carbon Dioxide", "Glucose", "Sodium Chloride", "Calcium Oxide", "Nitrogen"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text(
                "Molecules",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Colors.cyan,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: molecules.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),child: Container(
                    height: 100, // Set a specific height for the items
                    color: Colors.deepPurple[200],
                    child: Center(
                      child: Text(
                        molecules[index],
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),)
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}