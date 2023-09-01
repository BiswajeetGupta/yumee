
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yumee/bloc/products_bloc.dart';
import 'package:yumee/debug/block_observer.dart';
import 'package:yumee/repo/products_repo.dart';
import 'package:yumee/screens/home_screen.dart';

void main() async{

 WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  Bloc.observer = MyBlocObserver();
  runApp(RepositoryProvider(
    create: (context) => ProductsRepo(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsBloc(ProductsRepo()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
