import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/product.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Set<Product> build() {
    return {};
  }

  void addProduct(Product p) {
    if (!state.contains(p)) {
      state = {...state, p};
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

@riverpod
double cartTotal(ref) {
  final cartProducts = ref.watch(cartProvider);
  double total = 0;
  for (Product p in cartProducts) {
    total += p.price;
  }

  return total;
}
