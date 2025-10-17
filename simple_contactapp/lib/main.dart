import 'package:flutter/material.dart';

void main() => runApp(const ContactsApp());


class Contact {
  final String name;
  final String phone;
  const Contact(this.name, this.phone);
}

class ContactsApp extends StatelessWidget {
  const ContactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'যোগাযোগ',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        listTileTheme: const ListTileThemeData(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        ),
      ),
      home: const ContactsPage(),
    );
  }
}

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});


  static const List<Contact> _contacts = [
    Contact('সাব্বির রহমান', '+8801712345678'),
    Contact('তানজিলা হক', '+8801511122233'),
    Contact('নাফিসা তাসনিম', '+8801819988776'),
    Contact('মাহমুদুল হাসান', '+8801912345670'),
    Contact('আরিফুল ইসলাম', '+8801301122334'),
    Contact('নুসরাত জাহান', '+8801609988776'),
    Contact('শুভ্র দে', '+8801405566778'),
    Contact('সাদিয়া রহমান', '+8801755544332'),
    Contact('মোহাম্মদ রাশেদ', '+8801866677788'),
    Contact('তাহসিন কবির', '+8801990011223'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('যোগাযোগ'),
      ),

      body: ListView.separated(
        itemCount: _contacts.length,
        separatorBuilder: (_, __) => const Divider(height: 0),
        itemBuilder: (context, index) {
          final contact = _contacts[index];
          return ContactTile(contact: contact);
        },
      ),
    );
  }
}


class ContactTile extends StatelessWidget {
  final Contact contact;

  const ContactTile({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    final initial = contact.name.isNotEmpty
        ? contact.name.characters.first
        : '?';

    return ListTile(
      leading: CircleAvatar(
        radius: 22,
        child: Text(initial, style: const TextStyle(fontSize: 18)),
      ),
      title: Text(
        contact.name,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(contact.phone),
      trailing: const Icon(Icons.phone),
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('ডায়াল করতে: ${contact.phone}')));
      },
    );
  }
}
