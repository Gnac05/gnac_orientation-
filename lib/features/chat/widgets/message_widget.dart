import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';

class MessageWidget extends StatefulWidget {
  const MessageWidget({super.key, required this.isAI, this.message});
  final bool isAI;
  final String? message;

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  String msg = "";
  double width = 0.0;
  @override
  void initState() {
    super.initState();
    if (widget.message == null) {
      if (widget.isAI) {
        msg =
            "Bienvenu!!!\nJ'suis là pour vous guider dans vos choix de carrière. Parmi les trois domaines choisi, je vais vous aider à faire le choix le plus optimal pour vous. Mais pour ce fait j'aurais besoin de toutes vos préoccupations pour une orientation meilleur et personnalisé.";
      } else {
        msg = "Chargement...";
      }
    } else {
      msg = widget.message!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 20, left: widget.isAI ? 8 : 25, right: widget.isAI ? 25 : 8),
      child: Column(
        children: [
          Align(
            alignment:
                widget.isAI ? Alignment.bottomLeft : Alignment.bottomRight,
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
                bottomRight: Radius.circular(widget.isAI ? 15 : 0),
                bottomLeft: Radius.circular(widget.isAI ? 0 : 15),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(15),
                    topRight: const Radius.circular(15),
                    bottomRight: Radius.circular(widget.isAI ? 15 : 0),
                    bottomLeft: Radius.circular(widget.isAI ? 0 : 15),
                  ),
                  color: widget.isAI
                      ? Colors.red.withOpacity(0.8)
                      : Colors.blue.withOpacity(0.8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        if (widget.isAI)
                          TextSpan(
                            text: "Gnac Orientation AI\n",
                            style: TextStyle(
                              color: AppTheme().appSecondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        TextSpan(
                          text: msg,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight:
                                widget.isAI ? FontWeight.w600 : FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
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
