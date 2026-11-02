/// Response models for the Insider Trading API.

/// API Response wrapper.
class InsidertradingResponse {
  final String status;
  final dynamic error;
  final InsidertradingData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  InsidertradingResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory InsidertradingResponse.fromJson(Map<String, dynamic> json) => InsidertradingResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? InsidertradingData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Insider Trading API.

class InsidertradingData {
  String? ticker;
  String? cik;
  String? company;
  num? totalRecentForm4;
  num? count;
  String? lastTransactionDate;
  num? daysSinceLastTransaction;
  List<InsidertradingDataTransactionsItem>? transactions;
  InsidertradingDataSummary? summary;

  InsidertradingData({
    this.ticker,
    this.cik,
    this.company,
    this.totalRecentForm4,
    this.count,
    this.lastTransactionDate,
    this.daysSinceLastTransaction,
    this.transactions,
    this.summary,
  });

  factory InsidertradingData.fromJson(Map<String, dynamic> json) => InsidertradingData(
      ticker: json['ticker'],
      cik: json['cik'],
      company: json['company'],
      totalRecentForm4: json['totalRecentForm4'],
      count: json['count'],
      lastTransactionDate: json['lastTransactionDate'],
      daysSinceLastTransaction: json['daysSinceLastTransaction'],
      transactions: (json['transactions'] as List?)?.map((e) => InsidertradingDataTransactionsItem.fromJson(e)).toList(),
      summary: json['summary'] != null ? InsidertradingDataSummary.fromJson(json['summary']) : null,
    );
}

class InsidertradingDataTransactionsItem {
  String? filingDate;
  String? transactionDate;
  String? insiderName;
  String? insiderTitle;
  InsidertradingDataTransactionsItemRelationship? relationship;
  String? security;
  String? transactionCode;
  String? transactionType;
  String? direction;
  String? acquiredDisposed;
  num? shares;
  num? pricePerShare;
  num? value;
  num? sharesOwnedAfter;
  String? accessionNumber;
  String? url;

  InsidertradingDataTransactionsItem({
    this.filingDate,
    this.transactionDate,
    this.insiderName,
    this.insiderTitle,
    this.relationship,
    this.security,
    this.transactionCode,
    this.transactionType,
    this.direction,
    this.acquiredDisposed,
    this.shares,
    this.pricePerShare,
    this.value,
    this.sharesOwnedAfter,
    this.accessionNumber,
    this.url,
  });

  factory InsidertradingDataTransactionsItem.fromJson(Map<String, dynamic> json) => InsidertradingDataTransactionsItem(
      filingDate: json['filingDate'],
      transactionDate: json['transactionDate'],
      insiderName: json['insiderName'],
      insiderTitle: json['insiderTitle'],
      relationship: json['relationship'] != null ? InsidertradingDataTransactionsItemRelationship.fromJson(json['relationship']) : null,
      security: json['security'],
      transactionCode: json['transactionCode'],
      transactionType: json['transactionType'],
      direction: json['direction'],
      acquiredDisposed: json['acquiredDisposed'],
      shares: json['shares'],
      pricePerShare: json['pricePerShare'],
      value: json['value'],
      sharesOwnedAfter: json['sharesOwnedAfter'],
      accessionNumber: json['accessionNumber'],
      url: json['url'],
    );
}

class InsidertradingDataTransactionsItemRelationship {
  bool? director;
  bool? officer;
  bool? tenPercentOwner;

  InsidertradingDataTransactionsItemRelationship({
    this.director,
    this.officer,
    this.tenPercentOwner,
  });

  factory InsidertradingDataTransactionsItemRelationship.fromJson(Map<String, dynamic> json) => InsidertradingDataTransactionsItemRelationship(
      director: json['director'],
      officer: json['officer'],
      tenPercentOwner: json['tenPercentOwner'],
    );
}

class InsidertradingDataSummary {
  num? totalTransactions;
  num? distinctInsiders;
  InsidertradingDataSummaryBuys? buys;
  InsidertradingDataSummarySells? sells;
  num? netShares;
  num? netValue;
  num? buySellRatio;
  String? sentiment;
  bool? clusterBuy;

  InsidertradingDataSummary({
    this.totalTransactions,
    this.distinctInsiders,
    this.buys,
    this.sells,
    this.netShares,
    this.netValue,
    this.buySellRatio,
    this.sentiment,
    this.clusterBuy,
  });

  factory InsidertradingDataSummary.fromJson(Map<String, dynamic> json) => InsidertradingDataSummary(
      totalTransactions: json['totalTransactions'],
      distinctInsiders: json['distinctInsiders'],
      buys: json['buys'] != null ? InsidertradingDataSummaryBuys.fromJson(json['buys']) : null,
      sells: json['sells'] != null ? InsidertradingDataSummarySells.fromJson(json['sells']) : null,
      netShares: json['netShares'],
      netValue: json['netValue'],
      buySellRatio: json['buySellRatio'],
      sentiment: json['sentiment'],
      clusterBuy: json['clusterBuy'],
    );
}

class InsidertradingDataSummaryBuys {
  num? count;
  num? shares;
  num? value;

  InsidertradingDataSummaryBuys({
    this.count,
    this.shares,
    this.value,
  });

  factory InsidertradingDataSummaryBuys.fromJson(Map<String, dynamic> json) => InsidertradingDataSummaryBuys(
      count: json['count'],
      shares: json['shares'],
      value: json['value'],
    );
}

class InsidertradingDataSummarySells {
  num? count;
  num? shares;
  num? value;

  InsidertradingDataSummarySells({
    this.count,
    this.shares,
    this.value,
  });

  factory InsidertradingDataSummarySells.fromJson(Map<String, dynamic> json) => InsidertradingDataSummarySells(
      count: json['count'],
      shares: json['shares'],
      value: json['value'],
    );
}

class InsidertradingRequest {
  String ticker;
  String? type;
  int? limit;

  InsidertradingRequest({
    required this.ticker,
    this.type,
    this.limit,
  });

  Map<String, dynamic> toJson() => {
      'ticker': ticker,
      if (type != null) 'type': type,
      if (limit != null) 'limit': limit,
    };
}
