import 'package:flutter/material.dart';

class SynonymsPage extends StatelessWidget {
  final List<Map<String, dynamic>> synonyms = [
    {"synonym": "alternative", "words": ["choice", "substitute", "option"]},
    {"synonym": "replacement", "words": ["substitute", "substitution", "exchange"]},
    {"synonym": "substitute", "words": ["replacement", "alternate", "stand-in"]},
    {"synonym": "stand-in", "words": ["replacement", "substitute", "proxy"]},
    {"synonym": "proxy", "words": ["substitute", "stand-in", "representative"]},
    {"synonym": "fill-in", "words": ["replacement", "substitute", "temporary"]},
    {"synonym": "surrogate", "words": ["substitute", "replacement", "stand-in"]},
    {"synonym": "backup", "words": ["replacement", "substitute", "reserve"]},
    {"synonym": "equivalent", "words": ["equal", "corresponding", "comparable"]},
    {"synonym": "clone", "words": ["copy", "duplicate", "replica"]},
    {"synonym": "duplication", "words": ["copy", "replication", "imitation"]},
    {"synonym": "replica", "words": ["copy", "duplicate", "clone"]},
    {"synonym": "imitation", "words": ["copy", "replica", "duplicate"]},
    {"synonym": "copy", "words": ["duplicate", "replica", "imitation"]},
    {"synonym": "echo", "words": ["repetition", "reverberation", "reflection"]},
    {"synonym": "reproduction", "words": ["copy", "replica", "duplication"]},
    {"synonym": "counterpart", "words": ["correspondent", "equivalent", "match"]},
    {"synonym": "ditto", "words": ["copy", "repeat", "echo"]},
    {"synonym": "reiteration", "words": ["repetition", "restatement", "recurrence"]},
    {"synonym": "renewal", "words": ["restoration", "regeneration", "revival"]},
    {"synonym": "recreation", "words": ["amusement", "diversion", "entertainment"]},
    {"synonym": "reappearance", "words": ["return", "comeback", "resurgence"]},
    {"synonym": "rerun", "words": ["replay", "repetition", "recurrence"]},
    {"synonym": "redo", "words": ["revise", "remake", "reconstruct"]},
    {"synonym": "rehash", "words": ["review", "repetition", "recycling"]},
    {"synonym": "rework", "words": ["revise", "edit", "improve"]},
    {"synonym": "revision", "words": ["alteration", "amendment", "modification"]},
    {"synonym": "correction", "words": ["amendment", "rectification", "adjustment"]},
    {"synonym": "amendment", "words": ["modification", "change", "alteration"]},
    {"synonym": "modification", "words": ["alteration", "adjustment", "change"]},
    {"synonym": "adjustment", "words": ["modification", "alteration", "change"]},
    {"synonym": "adaptation", "words": ["adjustment", "alteration", "modification"]},
    {"synonym": "alteration", "words": ["modification", "change", "adjustment"]},
    {"synonym": "change", "words": ["modification", "alteration", "adjustment"]},
    {"synonym": "conversion", "words": ["transformation", "change", "adaptation"]},
    {"synonym": "transformation", "words": ["conversion", "change", "modification"]},
    {"synonym": "shift", "words": ["change", "movement", "adjustment"]},
    {"synonym": "variation", "words": ["change", "difference", "alteration"]},
    {"synonym": "mutation", "words": ["change", "variation", "alteration"]},
    {"synonym": "exchange", "words": ["trade", "swap", "barter"]},
    {"synonym": "switch", "words": ["change", "exchange", "transition"]},
    {"synonym": "trade", "words": ["exchange", "commerce", "business"]},
    {"synonym": "swap", "words": ["exchange", "trade", "switch"]},
    {"synonym": "commutation", "words": ["exchange", "replacement", "substitution"]},
    {"synonym": "barter", "words": ["trade", "exchange", "swap"]},
    {"synonym": "substitution", "words": ["replacement", "exchange", "switch"]},
    {"synonym": "renewal", "words": ["rebirth", "regeneration", "rejuvenation"]},
    {"synonym": "recurrence", "words": ["return", "repetition", "reappearance"]},
    {"synonym": "selection", "words": ["choice", "option", "pick"]},
    {"synonym": "preference", "words": ["choice", "liking", "favor"]},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Words and Synonyms'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: synonyms.length,
        itemBuilder: (context, index) {
          final synonym = synonyms[index]["synonym"];
          final words = synonyms[index]["words"] as List<String>;
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$synonym',
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '=>',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Row(
                    children: words.map((word) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5.0,top: 3.0),
                        child: Text('$word',style: TextStyle(fontSize: 12),),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

