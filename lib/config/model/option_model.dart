

import 'package:b_app/widgets/formatting.dart';
import 'package:flutter/material.dart';

class OptionModel {
  final String label;
  final IconData icon;
  final Color color;

  OptionModel({
    required this.label,
    required this.icon,
    required this.color,
  }); }


  // option list  Send, Receive, Buy, Sell, Market, Swap, History, Settings, Help


List<OptionModel> optionsList = [ 
  //  Receive, Buy, Sell, Market, Swap, History, Settings, Help
  OptionModel(label: 'Send', icon: Icons.send, color: Colors.blue),
  OptionModel(label: 'Receive', icon: Icons.call_received, color: Colors.green),
  OptionModel(label: 'Buy', icon: Icons.shopping_cart, color: Colors.orange),
  OptionModel(label: 'Sell', icon: Icons.sell, color: Colors.red),
  OptionModel(label: 'Market', icon: Icons.show_chart, color: Colors.purple),
  OptionModel(label: 'Swap', icon: Icons.swap_horiz, color: Colors.teal),
  OptionModel(label: 'History', icon: Icons.history, color: Colors.brown),
  OptionModel(label: 'Settings', icon: Icons.settings, color: Colors.grey),
  OptionModel(label: 'Help', icon: Icons.help, color: Colors.cyan),
];  




Widget optionCard(OptionModel obj){
  return Container(
    width: 120,
    height: 100,
    decoration: BoxDecoration(
    color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    padding: EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(obj.icon, size: 24, color: Colors.blue),
        // Spacer(),
        gapBox(8),
        Text(obj.label, style: TextStyle(fontSize: 12)),
      ],
    ),
  );
}
