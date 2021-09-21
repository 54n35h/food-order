import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:food_order/repository/food_search_repository.dart';
import 'package:meta/meta.dart';

part 'foodsearch_event.dart';
part 'foodsearch_state.dart';

class FoodsearchBloc extends Bloc<FoodsearchEvent, FoodsearchState> {
  var foodSearchRepoImpl;
  FoodsearchBloc({this.foodSearchRepoImpl}) : super(FoodsearchInitial());

  @override
  Stream<FoodsearchState> mapEventToState(
    FoodsearchEvent event,
  ) async* {
    if (event is FoodsearchEvent) {}
  }
}
