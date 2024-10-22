part of 'connectivity_bloc.dart';


@immutable
sealed class ConnectivityState{}

final class ConnectivityInitial extends ConnectivityState {}

class Connected extends ConnectivityState{
   final String message;
  Connected(this.message);
}

class Disconnected extends ConnectivityState{
  final String message;
  Disconnected(this.message);
}


