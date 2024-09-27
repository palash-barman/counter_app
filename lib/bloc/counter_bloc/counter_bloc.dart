import 'package:counter_apps/bloc/counter_bloc/counter_event.dart';
import 'package:counter_apps/bloc/counter_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc():super(const CounterState()){
    on<IncrementCounter>(_inCrement);
    on<DecrementCounter>(_deCrement);
  }

  void _inCrement(IncrementCounter event,Emitter<CounterState> emit){
    emit(state.copyWith(counter:state.counter+1));
  }

   void _deCrement(DecrementCounter event,Emitter<CounterState> emit){
    emit(state.copyWith(counter:state.counter-1));
  }

}