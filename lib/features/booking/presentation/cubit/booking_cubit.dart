import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workspace/core/helpers/app_strings.dart';
import 'package:workspace/features/booking/presentation/cubit/booking_states.dart';

class BookingCubit extends Cubit<BookingStates> {
  BookingCubit() : super(BookingInitialState());

  String date = '';
  String checkInTime = '';
  String checkOutTime = '';
  int checkInIndex = 0;
  int checkOutIndex = 0;

  bool get notEmptyFields =>
      date.isNotEmpty &&
          checkInTime.isNotEmpty &&
          checkOutTime.isNotEmpty &&
          checkOutIndex >= checkInIndex;

  void updateDate(String newDate) {
    date = newDate;
    emit(BookingUpdatedState());
  }

  void updateCheckInTime(String time) {
    checkInTime = time;
    emit(BookingUpdatedState());
  }

  void updateCheckInIndex(int index) {
    checkInIndex = index;
    emit(BookingUpdatedState());
  }

  void updateCheckOutIndex(int index) {
    checkOutIndex = index;
    emit(BookingUpdatedState());
  }

  void updateCheckOutTime(String time) {
    checkOutTime = time;
    emit(BookingUpdatedState());
  }

  void confirmBooking() {
    emit(BookingLoadingState());

    if (date.isNotEmpty &&
        checkInTime.isNotEmpty &&
        checkOutTime.isNotEmpty) {
      if (checkInIndex <= checkOutIndex) {
        emit(BookingSuccessState());
      } else {
        emit(BookingErrorState(error: AppStrings.bookingErrorMsg2));
      }
    } else {
      emit(BookingErrorState(error: AppStrings.bookingErrorMsg));
    }
  }


  void resetFields() {
    date = '';
    checkInTime = '';
    checkOutTime = '';
    checkInIndex = 0;
    checkOutIndex = 0;
    emit(BookingInitialState());
  }

  @override
  Future<void> close() {
    resetFields();
    return super.close();
  }
}
