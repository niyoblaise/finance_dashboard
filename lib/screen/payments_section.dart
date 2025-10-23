import 'package:finance_dashboard/models/transaction.dart';
import 'package:flutter/material.dart';


class PaymentsSection extends StatelessWidget {
  const PaymentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final payments = [
      Payment(
        platform: 'Behance',
        amount: 4567.23,
        date: 'March 2025',
        isUp: true,
      ),
      Payment(
        platform: 'Upwork',
        amount: 2245.55,
        date: 'March 2025',
        isUp: true,
      ),
      Payment(
        platform: 'GitHub',
        amount: 1500.00,
        date: 'March 2025',
        isUp: false,
      ),
      Payment(
        platform: 'Dribbble',
        amount: 890.75,
        date: 'March 2025',
        isUp: false,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Payments',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'See more',
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ...payments.map((payment) => _buildPaymentItem(payment)),
      ],
    );
  }

  Widget _buildPaymentItem(Payment payment) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: _getPlatformColor(payment.platform),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              _getPlatformIcon(payment.platform),
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  payment.platform,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      payment.isUp ? Icons.arrow_upward : Icons.arrow_downward,
                      size: 12,
                      color: payment.isUp ? Colors.green : Colors.red,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      payment.isUp ? 'Up' : 'Down',
                      style: TextStyle(
                        color: payment.isUp ? Colors.green : Colors.red,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$${payment.amount.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                payment.date,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getPlatformColor(String platform) {
    switch (platform) {
      case 'Behance':
        return const Color.fromARGB(255, 47, 52, 61);
      case 'Upwork':
        return const Color(0xFF14A800);
      case 'GitHub':
        return const Color(0xFF333333);
      case 'Dribbble':
        return const Color(0xFFEA4C89);
      default:
        return Colors.blue;
    }
  }

  IconData _getPlatformIcon(String platform) {
    switch (platform) {
      case 'Behance':
        return Icons.palette;
      case 'Upwork':
        return Icons.work;
      case 'GitHub':
        return Icons.code;
      case 'Dribbble':
        return Icons.design_services;
      default:
        return Icons.payment;
    }
  }
}