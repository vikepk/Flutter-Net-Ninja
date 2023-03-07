import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key, required this.quote, required this.delete});

  final Quote quote;
  final Function delete;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(
                        width: 2, color: Colors.brown), //border width and color
                    elevation: 2, //elevation of button
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(10) //content padding inside button
                    ),
                onPressed: () {
                  delete();
                },
                label: Text('Delete'),
                icon: Icon(
                  Icons.delete,
                  size: 40.0,
                ),
              ),
            ],
          ),
        ));
  }
}
