/// Insider Trading API client for Dart/Flutter
///
/// Insider Trading returns recent SEC Form 4 insider transactions for a US public company by ticker - who bought or sold, their role, the number of shares, price and transaction type - plus a derived insider-sentiment summary with net buy/sell activity and cluster-buy detection calculated for you.
///
/// For more information, visit: https://apiverve.com/marketplace/insidertrading?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_insidertrading;

export 'src/client.dart';
export 'src/models.dart';
