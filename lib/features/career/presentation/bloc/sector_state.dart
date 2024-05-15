part of 'sector_bloc.dart';

@immutable
sealed class SectorState {}

final class SectorInitial extends SectorState {}

class LoadingSectorState extends SectorState {}

class FailedSectorState extends SectorState {}

class ReadySectorState extends SectorState {
  final List<CareerWidget> myCareerSectors;
  ReadySectorState({required this.myCareerSectors});
}
