import 'package:bloc/bloc.dart';
import 'package:bloc2_sample/model/product_api.dart';
import 'package:bloc2_sample/services/api_services.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial(plist: [])) {
    on<Fetch>((event, emit) async {
      ApiServices apiServices = ApiServices();
      var List = await apiServices.fetchproducts();
      emit(ProductState(plist: List));
    });
  }
}
