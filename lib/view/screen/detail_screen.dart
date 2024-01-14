import 'package:departure_gita/model/geeta_model.dart';
import 'package:departure_gita/provider/lang_provider/lang_provider.dart';
import 'package:departure_gita/view/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  GeetaModel geeta;
  DetailScreen({super.key, required this.geeta});

  @override
  Widget build(BuildContext context) {
    LangProvider langProvider = Provider.of<LangProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        centerTitle: true,
        title: (langProvider.isLangModel.isLang == false)
            ? Text(geeta.nameMeaning)
            : Text(geeta.name),
      ),
      endDrawer: const Navbar(),
      body: Column(
        children: [
          Card(
            shadowColor: Colors.greenAccent,
            surfaceTintColor: Colors.blueAccent,
            elevation: 15,
            margin: const EdgeInsets.all(10),
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/img/lord_krishna.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.topLeft,
                child: (langProvider.isLangModel.isLang == false)
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          geeta.chapterSummary,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          geeta.chapterSummaryHindi,
                          style: const TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
