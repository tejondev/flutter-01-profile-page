import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const _ProfileView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Para ocupar todo el ancho disponible
          const SizedBox(width: double.infinity),

          // Imagen de perfil
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/img/Cheems.png"),
          ),
          const SizedBox(height: 50),

          // Detalles del perfil
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: const Offset(0, 3),
                )
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                itemProfile("Lucas Segundo", "Name", Icons.person_outline),
                itemProfile("112233665544", "Phone", Icons.phone_outlined),
                itemProfile("email@email", "Email", Icons.email_outlined),
                itemProfile("Calle 123", "Address", Icons.home_outlined),
              ],
            ),
          ),
        ],
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData icon) => Column(
        children: [
          ListTile(
            leading: Icon(icon, size: 30),
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            iconColor: Colors.deepPurple,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),
        ],
      );
}
