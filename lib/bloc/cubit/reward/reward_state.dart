part of 'reward_cubit.dart';

@immutable
abstract class RewardState {}

class RewardInitial extends RewardState {}

class ItemsChanged extends RewardState {

  final int index;
  ItemsChanged(this.index);
}
class PlayGif extends RewardState {

  final bool isPlay;
  PlayGif(this.isPlay);
}
class StopGif extends RewardState {

  final bool isStop;
  StopGif(this.isStop);
}