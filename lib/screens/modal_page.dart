import 'package:flutter/material.dart';
import 'package:movie_app/screens/download_page.dart';
import 'package:movie_app/screens/my_list_page.dart';

class ModalPage extends StatelessWidget {
  const ModalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Tüm Kategoriler",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DownloadPage()));
                },
                child: const Text('İndirilenler'),
              ),
            ),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyListPage()));
                },
                child: const Text('Listem'),
              ),
            ),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ),
                onPressed: () {},
                child: const Text('Aksiyon'),
              ),
            ),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ),
                onPressed: () {},
                child: const Text('Drama'),
              ),
            ),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ),
                onPressed: () {},
                child: const Text('BilimKurgu'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
