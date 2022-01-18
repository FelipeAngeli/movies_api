import 'package:flutter/material.dart';
import 'package:movies_api/controllers/home_controller.dart';
import 'package:movies_api/services/dio_client.dart';
import 'package:movies_api/services/json_placeholder_service.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController(JsonPlaceholderService(DioClient()));

  @override
  void initState() {
    super.initState();
    controller.fetchAllTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Movies'),
        ),
        body: AnimatedBuilder(
          animation: controller,
          builder: (context, Widget) {
            return ListView.builder(
                itemCount: controller.todos.length,
                itemBuilder: (context, index) {
                  final todo = controller.todos[index];
                  return ListTile(
                    title: Text(todo.name),
                  );
                });
          },
        ));
  }
}
