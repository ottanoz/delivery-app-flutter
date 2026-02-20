import 'package:flutter/material.dart';

// Class Stateless com iniciação de const e super.key
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contato'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.contact_mail, 
              size: 80, 
              color: Colors.green,
            ),
            const SizedBox(height: 30),
            Text(
              'Entre em contato conosco',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text('E-mail'),
                subtitle: Text('contato@delivery.com'),
                onTap: () {
                  print('Abrir email');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.green),
                title: Text('Telefone'),
                subtitle: Text('(54) 1234-5678'),
                onTap: () {
                  print('Ligar');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.teal),
                title: Text('WhatsApp'),
                subtitle: Text('(54) 9876-5432'),
                onTap: () {
                  print('Abrir WhatsApp');
                },
              ),
            ),

            const Spacer(),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Voltar'),
              ),
            ),
          ]
        ),
      )
    );
  }
}