import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'reward_state.dart';

class RewardCubit extends Cubit<RewardState> {
  RewardCubit() : super(RewardInitial());

  late AnimationController controller;
  int itemLength=2;


  increaseItems(){
itemLength=3;
emit(PlayGif(true));
Future.delayed(const Duration(seconds: 5), () {
  emit(StopGif(false));



});

  }
  decreaseItems(){
    itemLength=2;
    emit(ItemsChanged(itemLength));

  }
}