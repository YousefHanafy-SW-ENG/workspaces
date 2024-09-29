import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workspace/features/booking/presentation/cubit/booking_states.dart';

class BookingCubit extends Cubit<BookingStates> {
  BookingCubit() : super(BookingInitialState());

  String date='';
  String checkInTime='';
  String checkOutTime='';

  bool get notEmptyFields => date.isNotEmpty && checkInTime.isNotEmpty && checkOutTime.isNotEmpty;

  void updateDate(String newDate) {
    date = newDate;
    emit(BookingUpdatedState());
  }
  void updateCheckInTime(String time) {
    checkInTime = time;
    emit(BookingUpdatedState());
  }
  void updateCheckOutTime(String time) {
    checkOutTime = time;
    emit(BookingUpdatedState());
  }

  void confirmBooking() {
    emit(BookingLoadingState());
    if(date.isNotEmpty && checkOutTime.isNotEmpty&& checkInTime.isNotEmpty){
      emit(BookingSuccessState());
    }else{
      emit(BookingErrorState());
    }
  }
  @override
  Future<void> close() {
    date='';
    checkInTime='';
    checkOutTime='';
    return super.close();
  }



}
