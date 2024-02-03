import 'package:basketballpointsscreen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counterCubit extends Cubit<counterState>{

  int counter =0;
  int counter2=0;

  counterCubit(super.initialState);
   void TeamAIncreament(int buttonNumber){
counter+=buttonNumber;
emit(CounterTeamA());

   }



void TeamBIncreament(int buttonNumber){
  counter2+=buttonNumber;
  emit(CounterTeamB());

}


}