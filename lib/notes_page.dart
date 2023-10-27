import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catatan Saya'),
      ),
      body: const NoteList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigasi ke halaman tambah catatan
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const AddNotePage(),
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    // Di sini Anda dapat mengambil daftar catatan dari penyimpanan, misalnya database atau penyimpanan lokal
    // Kemudian, Anda dapat membuat daftar widget untuk menampilkan catatan-catatan tersebut
    return const Center(
      child: Text('Daftar Catatan akan ditampilkan di sini.'),
    );
  }
}

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Catatan'),
      ),
      body: const AddNoteForm(),
    );
  }
}

class AddNoteForm extends StatelessWidget {
  const AddNoteForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Judul Catatan'),
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Isi Catatan'),
            maxLines: 4,
          ),
          ElevatedButton(
            onPressed: () {
              // Simpan catatan ke penyimpanan di sini
              // Anda dapat menggunakan penyimpanan lokal atau database
              // Setelah penyimpanan, Anda bisa kembali ke halaman catatan
              Navigator.of(context).pop();
            },
            child: const Text('Simpan'),
          ),
        ],
      ),
    );
  }
}
