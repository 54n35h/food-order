import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_order/bloc/foodsearch_bloc.dart';
import 'package:food_order/repository/food_search_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Food Search'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: BlocProvider(
          create: (context) =>
              FoodsearchBloc(foodSearchRepoImpl: FoodSearchRepoImpl()),
          child: BlocListener<FoodsearchBloc, FoodsearchState>(
            listener: (context, state) {},
            child: BlocBuilder<FoodsearchBloc, FoodsearchState>(
              builder: (context, state) {
                return Container();
              },
            ),
          ),
        ));
  }
}
