import 'package:bookpageTracker/models/pages.dart';
import 'package:bookpageTracker/states/pages_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:numberpicker/numberpicker.dart';

class BookPageTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Page Tracker'),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        'Kaç Sayfa Okundu',
                        textScaleFactor: 2,
                      ),
                      Text(
                        Provider.of<PagesState>(context)
                            .totalPages()
                            .toString(),
                        textScaleFactor: 3,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Consumer<PagesState>(
            builder: (BuildContext context, value, Widget child) {
              return Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: value.pages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          title: Text(
                              '${value.pages[index].date.day}-${value.pages[index].date.month}-${value.pages[index].date.year}'),
                          trailing: Text(
                              value.pages[index].numberOfPages.toString(),
                              textScaleFactor: 2.0));
                    },
                  ),
                ),
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var nrOfPage = await showDialog<int>(
              context: context,
              builder: (context) {
                return NumberPickerDialog.integer(
                  initialIntegerValue: 1,
                  maxValue: 50,
                  minValue: 1,
                );
              });
          if (nrOfPage != null && nrOfPage > 0) {
            Pages pg = Pages(DateTime.now(), nrOfPage);
            Provider.of<PagesState>(context, listen: false).addPage(pg);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
