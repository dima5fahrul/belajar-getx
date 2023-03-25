import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LifeCycleSetState extends StatefulWidget {
  const LifeCycleSetState({super.key});

  @override
  State<LifeCycleSetState> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycleSetState> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => OtherPage(),
                ),
              );
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
        title: const Text('Life Cycle'),
      ),
      body: Center(
        child: CountWidget(count: count),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CountWidget extends StatefulWidget {
  int count;
  CountWidget({super.key, required this.count});

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void didUpdateWidget(covariant CountWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Text('Angka ${widget.count}');
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
      ),
      body: const Center(
        child: Text('Other Page'),
      ),
    );
  }
}
