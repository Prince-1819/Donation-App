// ********************
// created by - Prince Shah
// created at - 19/04
// ********************

import 'package:donation_app/components/layout.dart';
import 'package:donation_app/components/secondarySearchBar.dart';
import 'package:donation_app/variables/index.dart';
import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({Key? key});

  @override
  State<TransactionHistoryScreen> createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  Map<String, List<Map<String, String>>> filteredTransactions = transactionList;

  void searchTransactionHandler(String searchText) {
    String text = searchText.trim().toLowerCase();
    if (text.isEmpty) {
      setState(() {
        filteredTransactions = transactionList;
      });
      return;
    }

    setState(() {
      filteredTransactions = {};
      transactionList.forEach((key, value) {
        List<Map<String, String>> transactions = value!;
        List<Map<String, String>> filtered = transactions
            .where((transaction) =>
                transaction['title']!.toLowerCase().contains(text) ||
                transaction['subTitle']!.toLowerCase().contains(text))
            .toList();
        if (filtered.isNotEmpty) {
          filteredTransactions[key] = filtered;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            ListTile(
              title: MySecondarySearchBar(
                onChange: searchTransactionHandler,
              ),
              trailing: Image.asset('assets/images/filter.png'),
            ),
            filteredTransactions.length > 0
                ? Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: filteredTransactions.length,
                      itemBuilder: (context, index) {
                        final month =
                            filteredTransactions.keys.elementAt(index);
                        final transactions = filteredTransactions[month]!;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                month,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                              ),
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: transactions.length,
                              itemBuilder: (context, index) {
                                final item = transactions[index];
                                if (item.containsKey('logo')) {
                                  return ListTile(
                                    leading: Image.asset(item['logo']!),
                                    title: Text(item['title']!),
                                    subtitle: Text(item['subTitle']!),
                                    trailing: Text(
                                      item['amount']!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  );
                                } else {
                                  return const SizedBox();
                                }
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Center(
                        child: Text(
                      "No Items found",
                      style: TextStyle(fontSize: 20, color: Colors.black38),
                    )),
                  ),
          ],
        ),
      ),
    );
  }
}
