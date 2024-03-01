import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyScoresBody extends StatelessWidget {
  const MyScoresBody({super.key, required this.result});
  final Map<String, dynamic> result;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    result.forEach((keyU, university) {
      children.add(Text(
        keyU,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
      ));
      List<Widget> schoolList = [];
      university.forEach((keyS, school) {
        schoolList.add(Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            keyS,
            overflow: TextOverflow.clip,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ));
        List<Widget> filiereList = [];
        school.forEach((keyF, filiere) {
          filiereList.add(Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              keyF,
              overflow: TextOverflow.clip,
              style: const TextStyle(fontSize: 15),
            ),
          ));
          filiereList.add(Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppTheme().appSecondaryColor!,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    filiere["Moyenne"],
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'Bourse : ${filiere["Bourse"]}',
                    style: const TextStyle(fontSize: 17),
                  ),
                  Text(
                    'Aide : ${filiere["Aide"]}',
                    style: const TextStyle(fontSize: 17),
                  ),
                  ExpansionTile(
                    textColor: Colors.black,
                    title: const Text(
                      "Débouchés",
                      style: TextStyle(fontSize: 17),
                    ),
                    children: List.generate(
                      filiere["Métiers"].length,
                      (index) => Text(
                        "${index + 1}. ${filiere["Métiers"][index]}",
                        textAlign: TextAlign.start,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ));
        });
        schoolList.add(Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: AppTheme().appPrimaryColor!,
              width: 3,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: filiereList,
            ),
          ),
        ));
      });
      children.add(Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppTheme().appSecondaryColor!,
            width: 4,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: schoolList,
          ),
        ),
      ));
    });
    
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
