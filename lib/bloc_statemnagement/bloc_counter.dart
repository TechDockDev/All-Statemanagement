import 'package:all_state_management/bloc_statemnagement/bloc_state/bloc_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterBloc>().increment(),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterBloc>().decrement(),
          ),
        ],
      ),
      body: BlocBuilder<CounterBloc, int>(
          builder: ((context, state) => Center(
                child: Text('$state'),
              ))),
    );
  }
}
