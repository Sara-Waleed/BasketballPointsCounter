part of 'basket_pointer_cubit.dart';

@immutable
abstract class BasketPointerState {}

class BasketPointerInitial extends BasketPointerState {}
class CounterTeamA extends BasketPointerState{}
class   CounterTeamB extends BasketPointerState{}
class BasketPointerUpdated extends BasketPointerState {
  final int counter;
  final int counter2;

   BasketPointerUpdated({required this.counter, required this.counter2})
      : super();
}