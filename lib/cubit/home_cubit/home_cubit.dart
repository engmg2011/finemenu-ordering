import 'package:finemenu/cubit/home_cubit/home_state.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

}
