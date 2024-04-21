import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget(
      {super.key, required this.isAI, this.message, this.isLoading = false});
  final bool isAI;
  final bool isLoading;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 20, left: isAI ? 8 : 25, right: isAI ? 25 : 8),
      child: Column(
        children: [
          Align(
            alignment: isAI ? Alignment.bottomLeft : Alignment.bottomRight,
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
                bottomRight: Radius.circular(isAI ? 15 : 0),
                bottomLeft: Radius.circular(isAI ? 0 : 15),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(15),
                    topRight: const Radius.circular(15),
                    bottomRight: Radius.circular(isAI ? 15 : 0),
                    bottomLeft: Radius.circular(isAI ? 0 : 15),
                  ),
                  color: isAI
                      ? Colors.red.withOpacity(0.8)
                      : Colors.blue.withOpacity(0.8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: (isLoading)
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LoadingAnimationWidget.staggeredDotsWave(
                              color: Colors.white,
                              size: 50,
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (isAI)
                              Text(
                                "Gnac Orientation AI",
                                style: TextStyle(
                                  color: AppTheme().appSecondaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            MarkdownBody(
                              selectable: true,
                              data: message ?? "Chargement...",
                              styleSheet: MarkdownStyleSheet(
                                a: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                                p: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                h1: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                h2: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                h3: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                h4: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                h5: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                h6: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                                blockSpacing: 10,
                                strong: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                em: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                code: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                blockquote: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                  // Text.rich(
                  //     TextSpan(
                  //       children: [
                  //         if (isAI)
                  //           TextSpan(
                  //             text: "Gnac Orientation AI\n",
                  //             style: TextStyle(
                  //               color: AppTheme().appSecondaryColor,
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 18,
                  //             ),
                  //           ),
                  //         TextSpan(
                  //           text: message ?? "Chargement...",
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 16,
                  //             fontWeight:
                  //                 isAI ? FontWeight.w600 : FontWeight.w500,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
