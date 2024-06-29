import 'package:flutter/material.dart';
import 'package:guarda_notas/features/keep_notes/presentation/widgets/note_input_widget.dart';
import 'package:guarda_notas/resources/design_system.dart';

class KeepNotesPage extends StatefulWidget {
  const KeepNotesPage({super.key});

  @override
  KeepNotesPageState createState() => KeepNotesPageState();
}

class KeepNotesPageState extends State<KeepNotesPage> {
  final List<String> _notes = [];
  int? _editingIndex;
  TextEditingController? _editController;

  void _addNote(String note) {
    setState(() {
      _notes.add(note);
    });
  }

  void _editNote(int index, String newNote) {
    setState(() {
      _notes[index] = newNote;
      _editingIndex = null; // Encerra o modo de edição após editar
      _editController = null; // Limpa o controlador de edição
    });
  }

  void _deleteNote(int index) {
    setState(() {
      _notes.removeAt(index);
      _editingIndex = null; 
      _editController = null; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100), 
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0), 
                child: Text(
                  'SALVE SUAS IDEIAS COM NOTAS ONLINE',
                  style: TextStyle(
                    fontSize: 12, 
                    color: AppColors.primaryText, 
                  ),
                  textAlign: TextAlign.center, 
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 63.0), 
                child: Center(
                  child: Text(
                    'guardanotas ✍️',
                    style: TextStyle(
                      fontFamily: 'PassThrough', 
                      fontSize: 30, 
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 21), 
              NoteInputWidget(onAddNote: _addNote),
              const SizedBox(height: 20), 
              Expanded(
                child: ListView.builder(
                  itemCount: _notes.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _editingIndex = index;
                          _editController = TextEditingController(text: _notes[index]);
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: AppColors.inputBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (_editingIndex == index)
                              TextField(
                                controller: _editController,
                                style: AppTextStyles.inputText,
                                decoration: const InputDecoration(
                                  hintText: 'Edite sua nota...',
                                  hintStyle: AppTextStyles.placeholder,
                                  border: InputBorder.none,
                                ),
                              )
                            else
                              Text(
                                _notes[index],
                                style: AppTextStyles.inputText,
                              ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if (_editingIndex == index)
                                  TextButton(
                                    onPressed: () {
                                      if (_editController != null) {
                                        _editNote(index, _editController!.text);
                                      }
                                    },
                                    child: const Text('Salvar', style: TextStyle(color: AppColors.primaryText)),
                                  )
                                else
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _editingIndex = index;
                                        _editController = TextEditingController(text: _notes[index]);
                                      });
                                    },
                                    child: const Text('Editar', style: TextStyle(color: AppColors.primaryText)),
                                  ),
                                TextButton(
                                  onPressed: () => _deleteNote(index),
                                  child: const Text('Excluir', style: TextStyle(color: AppColors.primaryText)),
                                ),
                              ],
                            )
                          ],
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
    );
  }
}
