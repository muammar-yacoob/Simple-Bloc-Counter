import 'package:counter/bloc/counter_bloc.dart';
import 'package:counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
            backgroundColor: Colors.cyan[700],
            title: const Text('Bloc Counter',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold))),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              BlocBuilder<CounterCubit, int>(
                builder: (context, state) {
                  return Text('Cubit:\t[ $state ]',
                      style: const TextStyle(
                          fontSize: 50,
                          color: Colors.amber,
                          fontWeight: FontWeight.bold));
                },
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text('Bloc:\t[ ${state.currentCount} ]',
                      style: const TextStyle(
                          fontSize: 50,
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold));
                },
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
                context.read<CounterBloc>().add(CounterIncremented());
              },
              backgroundColor: Colors.green[400],
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
                context.read<CounterBloc>().add(CounterDecremented());
              },
              backgroundColor: Colors.red[400],
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
