import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_basics_2/features/counter/bloc/counter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final CounterBloc counterBloc = CounterBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        backgroundColor: Colors.purple.shade100,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterBloc.add(CounterIncrementEvent()),
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        bloc: counterBloc,
        builder: (context, state) {
          int counterValue = 0; // Default value for initial state

          if (state is CounterIncrementState) {
            counterValue = state.value;
          }

          return Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    counterValue.toString(),
                    style: const TextStyle(fontSize: 72),
                  ),
                  FloatingActionButton(
                    onPressed: () => counterBloc.add(CounterDecreseEvent()),
                    child: const Icon(Icons.minimize),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
