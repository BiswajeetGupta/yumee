
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yumee/bloc/products_bloc.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    context.read<ProductsBloc>().add(ProductsLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      // body: BlocBuilder<ProductsBloc, ProductsState>(
      //   builder: (context, state) {
      //     if (state is ProductsLoadingState) {
      //       return const Center(
      //         child: CircularProgressIndicator.adaptive(),
      //       );
      //     } else if (state is ProductsLoadedState) {
      //       return ListView.builder(
      //         itemCount: 10,
      //         itemBuilder: (context, index) {
      //           return ListTile(
      //             leading: Text(state.productsModel[index].category.toString()),
      //           );
      //         },
      //       );
      //     } else if (state is ProductsErrorState) {
      //       return Center(
      //         child: Text(state.errorMessage),
      //       );
      //     }

      //     return const SizedBox();
      //   },
      // ),

      // body: BlocListener<ProductsBloc, ProductsState>(
      //   listener: (context, state) {

      //   },
      //   child: Center(child: Text("qwett")),
      // ),

      body: BlocConsumer<ProductsBloc, ProductsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Center(child: Text("qwett"));
        },
      ),
    );
  }
}
