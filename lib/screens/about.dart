import 'package:flutter/material.dart';
import 'package:movie_app/components/back_appbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: BackAppBar(),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Bu uygulama filmlerin listelendiği filmler ile ilgili bilgilerin bulunduğu ve video oyanatan bir film uygulamasıdır. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
          Column(
            children: const [
              ListTile(
                title: Text('Uygulama Versiyonu',
                    style: TextStyle(color: Colors.white)),
                subtitle: Text('1.0.0', style: TextStyle(color: Colors.grey)),
              ),
              ListTile(
                title:
                    Text('Geliştirici', style: TextStyle(color: Colors.white)),
                subtitle:
                    Text('Ali ATEŞ', style: TextStyle(color: Colors.grey)),
              ),
              ListTile(
                title: Text('Lisans', style: TextStyle(color: Colors.white)),
                subtitle: Text('MIT', style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
