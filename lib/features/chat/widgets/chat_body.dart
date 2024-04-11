import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/features/chat/widgets/message_widget.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          physics: const BouncingScrollPhysics(),
          reverse: true,
          itemCount: discussion.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: discussion.last,
              );
            }
            return discussion[discussion.length - index - 1];
          },
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            decoration: BoxDecoration(
              color: AppTheme().appPrimaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      minLines: 1,
                      maxLines: 6,
                      decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          hintText: 'Entrer vos préoccupations...',
                          fillColor: Colors.white.withOpacity(0.5),
                          filled: true,
                          hoverColor: Colors.white.withOpacity(0.9),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    bottom: 15,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      Icons.send_rounded,
                      color: AppTheme().appSecondaryColor!.withOpacity(0.8),
                      size: 40,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

const discussion = [
  MessageWidget(isAI: true),
  MessageWidget(
      isAI: false,
      message: "Voici mes préoccupation concerant mes choix de fillières."),
  MessageWidget(isAI: true),
  MessageWidget(isAI: false, message: "Merci !!!"),
  MessageWidget(isAI: true),
  MessageWidget(
      isAI: false,
      message: "Voici mes préoccupation concerant mes choix de fillières."),
  MessageWidget(isAI: true),
  MessageWidget(isAI: false, message: "Merci, Merci, Merci !!!"),
  MessageWidget(
    isAI: true,
    message: "Avec plaisir !!!",
  ),
  MessageWidget(
      isAI: false,
      message: "Voici mes préoccupation concerant mes choix de fillières."),
  MessageWidget(
    isAI: true,
    message: "D'accord !!!",
  ),
  MessageWidget(isAI: false, message: "Merci !!!"),
];
