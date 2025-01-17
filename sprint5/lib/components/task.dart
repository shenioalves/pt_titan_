import 'package:flutter/material.dart';
import 'package:sprint5/components/difficulty.dart';

class Task extends StatefulWidget {
  final String nome, foto;
  final int dificuldade;

  Task(this.nome, this.foto, this.dificuldade, {super.key});
  int nivel = 0;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {


  bool assetOrNetwork(){
    if(widget.foto.contains('http')){
      return false;
    }
    return true;
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: ((widget.dificuldade*10) !=widget.nivel) ?  Colors.black: Colors.green,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 72,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black12,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: assetOrNetwork()? Image.asset(
                          widget.foto,
                          fit: BoxFit.cover,
                        ): Image.network(
                          widget.foto,
                          fit: BoxFit.cover,
                        )
                      ),
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
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Difficulty(
                          difficultyLevel: widget.dificuldade,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 65,
                      height: 65,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          onPressed: () {
                            setState(() {
                              ((widget.dificuldade*10) == widget.nivel) ?widget.nivel : widget.nivel++;

                            });
                            //print(nivel);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                'UP',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
                            ],
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
                        backgroundColor: Colors.white24,
                        color: Colors.white,
                        value: (widget.dificuldade > 0)
                            ? (widget.nivel / widget.dificuldade) / 10
                            : 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Nivel: ${widget.nivel}',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
