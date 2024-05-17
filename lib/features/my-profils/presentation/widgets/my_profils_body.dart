import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gnac_orientation/core/presentation/widgets/info_widget.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/features/my-profils/presentation/bloc/my_profile_bloc.dart';
import 'package:gnac_orientation/features/my-profils/presentation/widgets/my_profil_widget.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyProfilsBody extends StatefulWidget {
  const MyProfilsBody({super.key});

  @override
  State<MyProfilsBody> createState() => _MyProfilsBodyState();
}

class _MyProfilsBodyState extends State<MyProfilsBody> {
  final bloc = MyProfileBloc();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: InfoWidget(
            title: 'Bienvenu sur ${AppConstant().appName}.',
            descrition:
                'Votre appli d\'orientation pour un avenir certain. Vous pouvez consulter vos profils ou créer un nouveau profil 😊',
          ),
        ),
        Expanded(
          flex: 8,
          child: BlocBuilder<MyProfileBloc, MyProfileState>(
            bloc: bloc,
            builder: (context, state) {
              if (state is MyProfileInitial) {
                bloc.add(GetUsersEvent());
              }
              if (state is MyProfileLoading) {
                return const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyProfilWidget(
                      willNewProfil: true,
                    ),
                    CircularProgressIndicator(),
                  ],
                );
              }
              if (state is MyProfileFailure) {
                return const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyProfilWidget(
                      willNewProfil: true,
                    ),
                    Text(
                      "Attention!!!\nQuelque chose s'est mal passée !!!",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              }
              if (state is UsersReadyState) {
                final users = state.allProfiles;
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) => MyProfilWidget(
                    pseudo:index == 0? "pseudo": users[index].pseudo,
                    willNewProfil: index == 0,
                  ),
                  itemCount: users.length + 1,
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        )
      ],
    );
  }
}
