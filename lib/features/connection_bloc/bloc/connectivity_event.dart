part of 'connectivity_bloc.dart';

@immutable
sealed class ConnectivityEvent {}

class ConnectivityGained extends ConnectivityEvent{}

class ConnectivityLost extends ConnectivityEvent{}



