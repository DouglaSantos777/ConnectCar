import 'package:connectcar/riverpod/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/data/dao/payment_dao.dart';
import 'package:connectcar/data/database/database.dart';

class PaymentNotifier extends StateNotifier<List<Payment>> {
  final PaymentDao _paymentDao;

  PaymentNotifier(this._paymentDao) : super([]);

  // Carregar todos os pagamentos
  Future<void> loadPayments() async {
    final payments = await _paymentDao.getAllPayments();
    state = payments;
  }

  // Registrar um pagamento
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
    
    // Aguarda o carregamento dos pagamentos após registrar
    await loadPayments();
  }

  // Atualizar o status do pagamento

  // Atualizar o status do pagamento
  Future<void> updatePaymentStatus(int paymentId, String status) async {
    await _paymentDao.updatePaymentStatus(paymentId, status);
    
    // Aguarda o carregamento dos pagamentos após atualização
    await loadPayments();
  }
}

// Criação do Provider
final paymentNotifierProvider = StateNotifierProvider<PaymentNotifier, List<Payment>>(
  (ref) {
    final databaseAsync = ref.watch(databaseProvider);

    // Espera a resolução do databaseProvider para acessar o PaymentDao
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
 