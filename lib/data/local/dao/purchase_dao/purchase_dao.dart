import 'package:moor/moor.dart';

import '../../database.dart';
import '../../models/purchase.dart';

part 'purchase_dao.g.dart';

@UseDao(tables: [Purchase])
class PurchaseDao extends DatabaseAccessor<LocalDatabase> with _$PurchaseDaoMixin {
  PurchaseDao(LocalDatabase db) : super(db);

  Future<List<PurchaseData>> getPurchases() async =>
      await select(purchase).get();

  Future<int> insert(PurchaseData value) async =>
      await into(purchase).insert(value);
}
