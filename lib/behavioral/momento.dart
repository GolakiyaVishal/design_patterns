import 'dart:math';

/// Momento is a behavioral design patter
/// that let's you to save and restore the state of object
/// without revealing the details of implementation.

class Momento {
  void init() {
    var editor = Editor();
    editor.text = 'snap me';
    editor.cursorX = 7;
    editor.cursorY = 0;

    var command = Command();
    command.takeBackup(editor);
    editor.clear();
    command.restore(editor);

    print('Editor:: ${editor.text}');

  }
}

// Originator
class Editor {
  String? text;
  int cursorX = 0;
  int cursorY = 0;

  void clear() {
    text = null;
    cursorX = 0;
    cursorY = 0;
  }

  Snapshot createMomento() => Snapshot(
        editor: this,
        text: text,
        cursorX: cursorX,
        cursorY: cursorY,
      );
}

// Momento
class Snapshot {
  Editor editor;
  String? text;
  int cursorX;
  int cursorY;

  Snapshot({
    required this.editor,
    required this.text,
    required this.cursorX,
    required this.cursorY,
  });
}

// Command
class Command {
  Snapshot? momento;

  void takeBackup(Editor editor) {
    momento = editor.createMomento();
    print('backup taken');
  }

  void restore(Editor editor) {
    if (momento != null) {
      editor.text = momento!.text;
      editor.cursorX = momento!.cursorX;
      editor.cursorY = momento!.cursorY;
      print('editor restored');
    }
  }
}
