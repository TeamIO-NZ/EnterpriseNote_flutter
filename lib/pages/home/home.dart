import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Note {
  final String title;
  final String desc;
  final String content;

  Note({this.title, this.desc, this.content});

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      title: json['Title'],
      desc: json['Desc'],
      content: json['Content'],
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Note>> futureNotes;

  Future<List<Note>> fetchNotes() async {
    final response = await http.get('http://localhost:8080/api/v1/notes', headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      List<dynamic> list = json.decode(response.body);
      List<Note> notes = [];
      for (int i = 0; i < list.indexOf(list.last) + 1; i++) {
        notes.add(Note.fromJson(list[i]));
      }
      return notes;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load note');
    }
  }

  @override
  void initState() {
    super.initState();
    futureNotes = fetchNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enterprise Note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Note> notes = List.from(snapshot.data, growable: true);

              return ListView.builder(
                itemCount: notes.indexOf(notes.last) + 1,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                    child: Column(
                      children: [
                        Text(notes[index].title),
                        Text(notes[index].desc),
                        Text(notes[index].content),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return Text("${snapshot.error}");
            }
          },
          future: futureNotes,
        ),
      ),
    );
  }
}
