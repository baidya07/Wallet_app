import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wallet_app/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purpleAccent,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '\$${tx.amount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd().format(tx.date),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
