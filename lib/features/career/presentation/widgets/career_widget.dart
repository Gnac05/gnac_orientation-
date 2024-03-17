import 'package:flutter/material.dart';
import 'package:gnac_orientation/features/career/domain/entity/sector.dart';
import 'package:gnac_orientation/features/career/presentation/widgets/sector_widget.dart';

class CareerWidget extends StatelessWidget {
  const CareerWidget({super.key, required this.name, required this.mySectors});
  final String name;
  final List<Sector> mySectors;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: List.generate(
                mySectors.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: SectorWidget(
                    sector: mySectors[index],
                  ),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
