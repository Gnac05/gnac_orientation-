import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gnac_orientation/core/presentation/my_app_bar.dart';
import 'package:gnac_orientation/features/career/presentation/bloc/sector_bloc.dart';
import 'package:gnac_orientation/features/career/presentation/widgets/sector_body.dart';

@RoutePage()
class SectorsPage extends StatefulWidget {
  static const String routeName = '/sector';
  const SectorsPage({super.key});

  @override
  State<SectorsPage> createState() => _SectorsPageState();
}

class _SectorsPageState extends State<SectorsPage> {
  SectorBloc bloc = SectorBloc();

  @override
  void initState() {
    bloc.add(GetSectorsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context,
        withIcon: true,
      ),
      body: BlocBuilder<SectorBloc, SectorState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is LoadingSectorState) {
            return const CircularProgressIndicator();
          }
          if (state is ReadySectorState) {
            return SectorBody(
              careerWidgets: state.myCareerSectors,
            );
          }
          return const Center(
            child: Text("Une erreur est survenue"),
          );
        },
      ),
    );
  }
}
