import 'package:flutter/material.dart';
import 'package:tarefas_flutter/components/difficulty.dart';

class Tasks extends StatefulWidget {
  final String nome;
  final String foto;
   int dificuldade;
  final Color cor;
  int level;

  Tasks(this.nome, this.foto, this.dificuldade,this.level, this.cor, [ Key? key,])
      : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();

  Widget build(BuildContext context ) {
    // TODO: implement build
    throw UnimplementedError();
  }
  }
  class _TasksState extends State<Tasks>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.pink,
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: widget.cor,
                          ),
                          width: 80,
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(
                              widget.foto,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: const TextStyle(
                                fontSize: 24, overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        Difficulty(difficultyLevel: widget.dificuldade),
                      ],
                    ),
                    Container(
                      child: (widget.dificuldade == 5
                          ? ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'MAX',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                          : widget.level == 10
                          ? ElevatedButton(
                          onPressed: () {
                            setState(() {
                              widget.dificuldade++;
                              widget.level = 1;
                            });
                          },
                          child: const Text(
                            'Max',
                            style: TextStyle(
                                fontSize: 12, color: Colors.white),
                          ))
                          : ElevatedButton(
                        onPressed: () {
                          setState(() {
                            (widget.level == 10)
                                ? widget.level = 0
                                : widget.level++;
                          });
                        },
                        child: const Icon(Icons.upgrade),
                      )),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: (widget.level > 0 ? widget.level / 10 : 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      (widget.dificuldade == 5
                          ? 'Level: MAX'
                          : 'Level: ${widget.level}'),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
  }