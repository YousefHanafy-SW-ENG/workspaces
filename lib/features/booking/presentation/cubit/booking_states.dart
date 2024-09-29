// booking_states.dart
sealed class BookingStates {}

class BookingInitialState extends BookingStates {}

class BookingLoadingState extends BookingStates {}

class BookingSuccessState extends BookingStates {}

class BookingUpdatedState extends BookingStates {}

class BookingErrorState extends BookingStates {}
