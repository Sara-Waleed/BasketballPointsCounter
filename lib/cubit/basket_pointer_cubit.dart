import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'basket_pointer_state.dart';

class BasketPointerCubit extends Cubit<BasketPointerState> {
  BasketPointerCubit() : super(BasketPointerInitial());

  int counter =0;
  int counter2=0;
  void TeamAIncreament({required int buttonNumber}){
    counter+=buttonNumber;
    emit(CounterTeamA());

  }

  void TeamBIncreament({required  int buttonNumber}){
    counter2+=buttonNumber;
    emit(CounterTeamB());

  }
  void resetPoints() {
    counter = 0;
    counter2 = 0;
    emit(BasketPointerUpdated(counter: counter, counter2: counter2));
  }
}
