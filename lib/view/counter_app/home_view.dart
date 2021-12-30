import 'package:bloc_state_management/block/counter_cubit.dart';
import 'package:bloc_state_management/view/counter_app/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
                builder: (context, count) =>
                    Text('$count', style: TextStyle(fontSize: 30))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CounterView()));
                },
                child: Text("Counter View"))
          ],
        ),
      ),
    );
  }
}
