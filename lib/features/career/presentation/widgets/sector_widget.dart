import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/features/career/domain/entity/sector.dart';
import 'package:injectable/injectable.dart';

@injectable
class SectorWidget extends StatefulWidget {
  const SectorWidget({
    super.key,
    required this.sector,
  });
  final Sector sector;

  @override
  State<SectorWidget> createState() => _SectorWidgetState();
}

class _SectorWidgetState extends State<SectorWidget> {
  bool withDetail = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          withDetail = !withDetail;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppTheme().appSecondaryColor!,
            width: 2,
          ),
          color: AppTheme().red100,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 4,
            bottom: 10,
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Text(
                              'Filière :   ',
                              style: TextStyle(
                                color: AppTheme().appSecondaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.sector.name,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Text(
                              'école :   '.toUpperCase(),
                              style: TextStyle(
                                color: AppTheme().appSecondaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                                width: 150,
                                child: Text(
                                  widget.sector.school,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 2,
                                )),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Text(
                              'Université :   ',
                              style: TextStyle(
                                color: AppTheme().appSecondaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                                width: 100,
                                child: Text(
                                  widget.sector.university,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 2,
                                )),
                          ],
                        ),
                      ),

                      Visibility(
                          visible: withDetail,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      'Moyenne :   ',
                                      style: TextStyle(
                                        color: AppTheme().appSecondaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      widget.sector.moyenne.toStringAsFixed(2),
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      'Nb. Bourse :   ',
                                      style: TextStyle(
                                        color: AppTheme().appSecondaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      widget.sector.nbBourse.toString(),
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      'Nb. Secours :   ',
                                      style: TextStyle(
                                        color: AppTheme().appSecondaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      widget.sector.nbSecour.toString(),
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Métiers :   ',
                                      style: TextStyle(
                                        color: AppTheme().appSecondaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Column(
                                      children: List.generate(widget.sector.metiers.length, (index) => Text(
                                      widget.sector.metiers[index],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 2,
                                    ),),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ))
                      // RichText(text: TextSpan(text: 'Filière :', children:[TextSpan()], style: TextStyle(color: AppTheme().appSecondaryColor, fontSize: 16, fontWeight: FontWeight.bold,), ),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  withDetail
                      ? FontAwesomeIcons.angleDown
                      : FontAwesomeIcons.angleUp,
                  color: AppTheme().greyMedium,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
