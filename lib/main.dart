import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: BlocBuilder<CounterBloc, int>(builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 5, 45, 78),
              centerTitle: true,
              title: const Text(
                'Do counter by block',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.toString(),
                  style: const TextStyle(fontSize: 36),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 16, 78, 128),
                          ),
                          foregroundColor: WidgetStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterBloc>(context)
                              .add(CounterIncEventByOne());
                        },
                        child: const Text(
                          '+ 1',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 5, 45, 78),
                          ),
                          foregroundColor: WidgetStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterBloc>(context)
                              .add(CounterIncEventByTen());
                        },
                        child: const Text(
                          '+ 10',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 5, 45, 78),
                          ),
                          foregroundColor: WidgetStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterBloc>(context)
                              .add(CounterDecEventByTen());
                        },
                        child: const Text(
                          '- 10',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 16, 78, 128),
                          ),
                          foregroundColor: WidgetStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterBloc>(context)
                              .add(CounterDecEventByOne());
                        },
                        child: const Text(
                          '- 1',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(255, 58, 0, 92),
                    ),
                    foregroundColor: WidgetStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(context)
                        .add(CounterMakeZero());
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
