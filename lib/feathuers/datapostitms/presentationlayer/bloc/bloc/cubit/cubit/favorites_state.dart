part of 'favorites_cubit.dart';

sealed class FavoritesState extends Equatable {
  const FavoritesState();

  @override
  List<Object> get props => [];
}

final class FavoritesInitial extends FavoritesState {

  final List<Mealmodel>listmealmodel;

  FavoritesInitial({required this.listmealmodel});
}

class Favoritesadd extends FavoritesState {
  final String mesg;

  Favoritesadd({required this.mesg});

  @override
  List<Object> get props => [mesg];
}

class Favoritesremove extends FavoritesState {
  final String mesg;

  Favoritesremove({required this.mesg});

  @override
  List<Object> get props => [mesg];
}
