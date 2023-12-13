import 'package:finemenu/cubit/home_cubit/home_state.dart';
import 'dart:convert' as convert;
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

}
