import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/payments.dart';
import 'package:connectcar/data/database/database.dart';

part 'payment_dao.g.dart';

@DriftAccessor(tables: [Payments])
class PaymentDao extends DatabaseAccessor<Database> with _$PaymentDaoMixin {
  PaymentDao(Database db) : super(db);

  Future<void> addPayment({
    required int rentId,
    required double value,
    required DateTime paymentDate,
    String? status,
  }) async {
    await into(payments).insert(PaymentsCompanion(
      rentId: Value(rentId),
      value: Value(value),
      paymentDate: Value(paymentDate),
      status: Value(status),
    ));
  }

  Future<List<Payment>> getAllPayments() async {
    return await select(payments).get();
  }

  Future<List<Payment>> getPaymentsByRent(int rentId) async {
    return await (select(payments)..where((p) => p.rentId.equals(rentId))).get();
  }

  Future<void> updatePaymentStatus(int paymentId, String status) async {
    await (update(payments)..where((p) => p.id.equals(paymentId))).write(
      PaymentsCompanion(status: Value(status)),
    );
  }
}
