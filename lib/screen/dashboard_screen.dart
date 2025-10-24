import 'package:finance_dashboard/screen/payments_section.dart';
import 'package:finance_dashboard/screen/saving_plan_section.dart';
import 'package:finance_dashboard/screen/statistics_section.dart';
import 'package:finance_dashboard/screen/transaction_history.dart';
import 'package:finance_dashboard/screen/wallet_section.dart';
import 'package:finance_dashboard/widget/balance_card.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              _buildHeader(),
              const SizedBox(height: 20),
              
              
              const BalanceCard(balance: 79456.88),
              const SizedBox(height: 20),
             
              const WalletSection(),
              const SizedBox(height: 20),
        
              const SavingPlanSection(),
              const SizedBox(height: 20),
              
           
              const TransactionHistorySection(),
              const SizedBox(height: 20),
              
            
              const StatisticsSection(),
              const SizedBox(height: 20),
              
             
              const PaymentsSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '9:41',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Good morning',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        const Text(
          'Niyonshuti Blaise',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}