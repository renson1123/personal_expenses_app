import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText:
                      'Title'), // set up where we register every keystore
              controller: titleController,
              // onChanged: (value) => titleInput = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (value) => amountInput = value, // set up where we register every keystore
            ),
            TextButton(
              onPressed: () {
                print(titleController.text);
              },
              child: Text('Add transaction'),
              style: TextButton.styleFrom(
                textStyle: const TextStyle(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
