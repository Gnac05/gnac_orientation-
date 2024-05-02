import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/injection/injection.dart';
import 'package:gnac_orientation/features/career/domain/entity/sector.dart';
import 'package:gnac_orientation/features/career/presentation/widgets/career_widget.dart';

part 'sector_event.dart';
part 'sector_state.dart';

class SectorBloc extends Bloc<SectorEvent, SectorState> {
  SectorBloc() : super(SectorInitial()) {
    on<GetSectorsEvent>((event, emit) {
      emit(LoadingSectorState());
      Map<String, dynamic> userData = getIt<AppConstant>().myUserData;
      List<String> careers = userData['careers'];
      String myClass = userData['Série'];

      Map<String, dynamic> careersData =
          getIt<AppConstant>().allCarrers[myClass];

      List<CareerWidget> careerWidgets = [];
      for (var career in careers) {
        Map<String, dynamic> sectors = careersData[career];
        List<Sector> mySectors = [];
        int n = 0;
        double sum = 0;

        // For each Sector Select
        sectors.forEach((key, value) {
          value["Matières"].forEach((ue) {
            // print("Matière: " + ue);
            sum += userData["Matières"][ue]["Note"] *
                userData["Matières"][ue]["Coefficient"];
            n += userData["Matières"][ue]["Coefficient"] as int;
          });
          double moyenne = (sum / n);
          mySectors.add(
            Sector(
              name: key,
              school: value["Ecole/Faculté"],
              university: value["Université"],
              moyenne: moyenne,
              nbBourse: value["Bourse"],
              nbSecour: value["Aide"],
            ),
          );
        });

        careerWidgets.add(CareerWidget(
          name: career,
          mySectors: mySectors,
        ));
      }

      emit(ReadySectorState(myCareerSectors: careerWidgets));
    });
  }
}
