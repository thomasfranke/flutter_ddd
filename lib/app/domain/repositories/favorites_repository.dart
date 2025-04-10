abstract class IFavoritesRepository {
  Future<List<String>> fetchFavorites();
  Future<void> addToFavorites({required String symbol});
  Future<void> removeFromFavorites({required String symbol});
}
