import 'package:flutter/material.dart';
import 'package:guarda_notas/resources/design_system.dart';

class NoteInputWidget extends StatefulWidget {
  final Function(String) onAddNote;

  const NoteInputWidget({required this.onAddNote, Key? key}) : super(key: key);

  @override
  _NoteInputWidgetState createState() => _NoteInputWidgetState();
}

class _NoteInputWidgetState extends State<NoteInputWidget> {
  final TextEditingController _controller = TextEditingController();
  String _note = '';
  int _maxLength = 200;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: AppColors.inputBackground,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextField(
            controller: _controller,
            maxLength: _maxLength,
            onChanged: (value) {
              setState(() {
                _note = value;
              });
            },
            style: AppTextStyles.inputText,
            decoration: const InputDecoration(
              border: InputBorder.none,
              counterText: '',
              hintText: 'Escreva uma nota...',
              hintStyle: AppTextStyles.placeholder,
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end, // Alinhar à direita
          children: [
            Text(
              '${_note.length}/$_maxLength',
              style: AppTextStyles.placeholder,
            ),
            const SizedBox(width: 20), // Espaçamento entre o contador e o botão
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.primaryText,
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
              ),
              onPressed: () {
                if (_note.isNotEmpty) {
                  widget.onAddNote(_note);
                  _controller.clear();
                  setState(() {
                    _note = '';
                  });
                }
              },
              child: const Text('Adicionar', style: AppTextStyles.button),
            ),
          ],
        ),
      ],
    );
  }
}
