import 'package:connectcar/riverpod/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/data/dao/payment_dao.dart';
import 'package:connectcar/data/database/database.dart';

class PaymentNotifier extends StateNotifier<List<Payment>> {
  final PaymentDao _paymentDao;

  PaymentNotifier(this._paymentDao) : super([]);

  Future<void> loadPayments() async {
    final payments = await _paymentDao.getAllPayments();
    state = payments;
  }

  Future<void> registerPayment({
    required int rentId,
    required double value,
    required DateTime paymentDate,
    String? status,
  }) async {
    await _paymentDao.addPayment(
      rentId: rentId,
      value: value,
      paymentDate: paymentDate,
      status: status,
    );
    
    await loadPayments();
  }


  Future<void> updatePaymentStatus(int paymentId, String status) async {
    await _paymentDao.updatePaymentStatus(paymentId, status);
    
    await loadPayments();
  }
}

final paymentNotifierProvider = StateNotifierProvider<PaymentNotifier, List<Payment>>(
  (ref) {
    final databaseAsync = ref.watch(databaseProvider);

    return databaseAsync.when(
      data: (database) {
        final paymentDao = PaymentDao(database);
        return PaymentNotifier(paymentDao);
      },
      loading: () => throw Exception('Database is loading'),
      error: (error, stackTrace) => throw Exception('Error loading database: $error'),
    );
  },
);
 