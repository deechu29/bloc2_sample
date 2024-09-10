import 'package:bloc2_sample/product/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.plist!.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("${state.plist![index].thumbnail}"),
              ),
              title: Text("${state.plist![index].title}"),
              subtitle: Text("${state.plist![index].price}"),
              trailing: Text("${state.plist![index].brand}"),
            ),
          ),
        );
      },
    ));
  }
}
