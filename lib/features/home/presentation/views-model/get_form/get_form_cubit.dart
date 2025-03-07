import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sports/features/home/data/models/fields.dart';
import 'package:sports/features/home/data/repos/home_repo.dart';

part 'get_form_state.dart';

class GetFormCubit extends Cubit<GetFormState> {
  GetFormCubit(this.homeRepo) : super(GetFormInitial());
  final HomeRepo homeRepo;
  Future fetchForm() async {
    emit(GetFormLoading());
    var data = await homeRepo.fetchForm("255");
    data.fold((failuer) {
      emit(GetFormFailuer(failuer));
    }, (form) {
      emit(GetFormSuccess(form));
    });
  }
}
