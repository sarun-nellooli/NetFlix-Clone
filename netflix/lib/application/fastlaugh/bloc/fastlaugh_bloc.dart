import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fastlaugh_event.dart';
part 'fastlaugh_state.dart';
part 'fastlaugh_bloc.freezed.dart';

class FastlaughBloc extends Bloc<FastlaughEvent, FastlaughState> {
  FastlaughBloc() : super(_Initial()) {
    on<FastlaughEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
