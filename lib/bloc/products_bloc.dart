import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:yumee/Models/products_model.dart';
import 'package:yumee/repo/products_repo.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsLoadedEvent, ProductsState> {
  final ProductsRepo productsRepo;
  ProductsBloc(this.productsRepo) : super(ProductsLoadingState()) {
    on<ProductsLoadedEvent>((event, emit) async {
      try {
        emit(ProductsLoadingState());

        var data = await productsRepo.getProducts();


          emit(ProductsLoadedState(data));
    
      } catch (e) {
        emit(ProductsErrorState(e.toString()));
      }
    });
  }
}
