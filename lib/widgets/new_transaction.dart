import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      // Checking whether the user inputs any data or not
      return; // Return also stops the function execution, it means the code after return is not reached.
    }

    addTx(
      enteredTitle,
      enteredAmount,
    );
  }

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
                      'Title'), // set up where we register every keystroke
              controller: titleController,
              onSubmitted: (_) =>
                  submitData(), // anonymous function (_) is a convention to signal, I get an argument but I don't care about it here, I have to accept it but I don't plan on using it,
              // onChanged: (value) => titleInput = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType
                  .number, // Number keyboard will only show upon inputting some data in the amount TextField
              onSubmitted: (_) => submitData(),
              // onChanged: (value) => amountInput = value, // set up where we register every keystroke
            ),
            TextButton(
              child: Text('Add transaction'),
              style: TextButton.styleFrom(
                textStyle: const TextStyle(),
              ),
              onPressed: submitData,
            )
          ],
        ),
      ),
    );
  }
}
