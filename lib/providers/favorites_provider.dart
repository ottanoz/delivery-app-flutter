import 'package:flutter/foundation.dart';
import '../models/product.dart';

class FavoritesProvider extends ChangeNotifier {
  // Lista de IDs dos produtos favoritos
  final List<String> _favoriteIds = [];

  // Getter para acessar a lista (read-only)
  List<String> get favoriteIds => List.unmodifiable(_favoriteIds);

  bool isFavorite(String productId) {
    return _favoriteIds.contains(productId);
  }

  void toggleFavorite(Product product) {
    if (_favoriteIds.contains(product.id)) {
      _favoriteIds.remove(product.id);
      print('Produto ${product.name} removido dos favoritos');
    } else {
      _favoriteIds.add(product.id);
      print('Produto ${product.name} adicionado aos favoritos');
    }
    // Notifica os ouvintes para atualizar a UI
    notifyListeners();
  }

  // Getter para contar quantos produtos estão nos favoritos
  int get favoriteCount => _favoriteIds.length;

  // Método para limpar todos os favoritos
  void clearFavorites() {
    _favoriteIds.clear();
    notifyListeners();
  }
}