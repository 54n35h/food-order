part of 'foodsearch_bloc.dart';

@immutable
abstract class FoodsearchState {}

class FoodsearchInitial extends FoodsearchState {}

class FoodsearchLoadingState extends FoodsearchState {}

class FoodsearchFailedState extends FoodsearchState {
  final String message;

  FoodsearchFailedState({this.message});
}

class FoodsearchSuccessState extends FoodsearchState {}
