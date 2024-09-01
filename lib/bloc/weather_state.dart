part of 'weather_bloc.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherBlocLoading extends WeatherState {}
final class WeatherBlocFailure extends WeatherState {}
final class WeatherBlocSuccess extends WeatherState {
  final Weather weather;

  WeatherBlocSuccess(this.weather);

  @override
  List<Object> get props => [weather];
}