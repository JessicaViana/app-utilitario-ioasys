import 'package:app_utilitario_ioasys/model/task_model.dart';
import 'package:app_utilitario_ioasys/components/default_drawer.dart';
import 'package:flutter/material.dart';

class Tarefas extends StatefulWidget {
  const Tarefas({Key? key}) : super(key: key);
  static final String routeName = '/Tarefas';

  @override
  _Tarefas createState() => _Tarefas();
}

class _Tarefas extends State<Tarefas> {
  var todasTarefas = <TaskModel>[];
  TextEditingController _novaTarefa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Image.asset('assets/images/logo_home.png'),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Lista de Tarefas',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 23, right: 20),
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _novaTarefa,
                      decoration: InputDecoration(
                        labelText: 'Nova Tarefa',
                        labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      todasTarefas.add(TaskModel(_novaTarefa.text));

                      _novaTarefa.clear();

                      setState(() {});
                    },
                    child: Text('ADD', style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: todasTarefas.length,
                  itemBuilder: (BuildContext context, int index) {
                    var tarefa = todasTarefas[index];

                    return Dismissible(
                      key: UniqueKey(),
                      onDismissed: (value) {
                        todasTarefas.removeAt(index);
                      },
                      direction: DismissDirection.startToEnd,
                      background: Container(
                          padding: EdgeInsets.only(left: 16),
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.delete, color: Colors.white),
                          color: Theme.of(context).disabledColor),
                      child: Card(
                        child: CheckboxListTile(
                          title: Text(tarefa.title),
                          activeColor: Theme.of(context).primaryColor,
                          secondary: Icon(
                              tarefa.completed
                                  ? Icons.check_circle
                                  : Icons.error,
                              color: Theme.of(context).primaryColor),
                          value: tarefa.completed,
                          onChanged: (value) {
                            todasTarefas[index].completed = value!;

                            setState(() {});
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: DefaultDrawer(),
    );
  }
}
