import 'package:counter_apps/bloc/counter_bloc/counter_bloc.dart';
import 'package:counter_apps/bloc/counter_bloc/counter_event.dart';
import 'package:counter_apps/bloc/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(builder: (_, state) {
            return Text(
              state.counter.toString(),
              style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            );
          }),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncrementCounter());
                  },
                  child: const Text("Increment")),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecrementCounter());
                  },
                  child: const Text("Decrement"))
            ],
          )
        ],
      ),
    );
  }
}
