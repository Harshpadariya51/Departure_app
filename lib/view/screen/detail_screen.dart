import 'package:departure_gita/model/geeta_model.dart';
import 'package:departure_gita/provider/lang_provider/lang_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  GeetaModel geeta;
  DetailScreen({super.key, required this.geeta});

  @override
  Widget build(BuildContext context) {
    LangProvider langProvider = Provider.of<LangProvider>(context);
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        elevation: 15,
        centerTitle: true,
        title: (langProvider.isLangModel.isLang == false)
            ? Text(
                geeta.nameMeaning,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            : Text(geeta.name),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orange.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    (langProvider.isLangModel.isLang == false)
                        ? 'Chapter No. : ${geeta.chapterNumber}'
                        : 'अध्याय संख्या. : ${geeta.chapterNumber}',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    (langProvider.isLangModel.isLang == false)
                        ? 'Chapter Name : ${geeta.nameMeaning}'
                        : 'अध्याय का नाम : ${geeta.name}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              'assets/img/krishna.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.orange.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.topLeft,
            child: (langProvider.isLangModel.isLang == false)
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      geeta.chapterSummary,
                      style: const TextStyle(fontSize: 18, color: Colors.black),
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
        ],
      ),
    );
  }
}
