import 'package:departure_gita/provider/data_provider/data_provider.dart';
import 'package:departure_gita/provider/lang_provider/lang_provider.dart';
import 'package:departure_gita/provider/theme_provider/theme_provider.dart';
import 'package:departure_gita/view/screen/detail_screen.dart';
import 'package:departure_gita/view/screen/language_page.dart';
import 'package:departure_gita/view/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DataProvider dataProvider = Provider.of<DataProvider>(context);
    ThemeProvider themeProviderFalse =
        Provider.of<ThemeProvider>(context, listen: false);
    LangProvider langProvider = Provider.of<LangProvider>(context);
    LangProvider langProviderFalse =
        Provider.of<LangProvider>(context, listen: false);
    dataProvider.getGeetaData();
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        title: const Text(
          'Bhagavad Geeta',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: const Navbar(),
      body: ListView(
        children: dataProvider.newData.map(
          (e) {
            return Card(
              margin: const EdgeInsets.all(8),
              elevation: 8,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.orange.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ListTile(
                    leading: Text(
                      e.chapterNumber.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    title: (langProvider.isLangModel.isLang == false)
                        ? Text(
                            e.nameMeaning,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            e.name,
                          ),
                    subtitle: Text(
                      e.nameTranslation,
                      style: const TextStyle(),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailScreen(geeta: e);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
