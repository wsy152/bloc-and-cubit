import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learding_bloc/page_bloc/bloc/counter_bloc.dart';

class CounterBlocPage extends StatefulWidget {
  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  State<CounterBlocPage> createState() => _CounterBlocPageState();
}

class _CounterBlocPageState extends State<CounterBlocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                'Counter ${state.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterIncrement())
                  ;
                },
                icon: const Icon(Icons.add),
                label: const Text(''),
              ),
              TextButton.icon(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterDecrement());
                },
                icon: const Icon(Icons.remove),
                label: const Text(''),
              )
            ],
          )
        ],
      )),
    );
  }
}
