part of 'product_bloc.dart';

class ProductState {
  List<Product>? plist = [];
  ProductState({required this.plist});
}

final class ProductInitial extends ProductState {
  ProductInitial({required super.plist});
}
