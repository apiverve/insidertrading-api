# Insider Trading API - PHP Package

Insider Trading returns recent SEC Form 4 insider transactions for a US public company by ticker - who bought or sold, their role, the number of shares, price and transaction type - plus a derived insider-sentiment summary with net buy/sell activity and cluster-buy detection calculated for you.

## Installation

Install via Composer:

```bash
composer require apiverve/insidertrading
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Insidertrading\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'ticker' => 'AAPL',
    'type' => 'buy',
    'limit' => 10
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Insidertrading\Client;
use APIVerve\Insidertrading\Exceptions\APIException;
use APIVerve\Insidertrading\Exceptions\ValidationException;

try {
    $response = $client->execute(['ticker' => 'AAPL', 'type' => 'buy', 'limit' => 10]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "ticker": "AAPL",
    "cik": "0000320193",
    "company": "Apple Inc.",
    "totalRecentForm4": 512,
    "count": 5,
    "lastTransactionDate": "2025-10-14",
    "daysSinceLastTransaction": 64,
    "transactions": [
      {
        "filingDate": "2025-10-16",
        "transactionDate": "2025-10-14",
        "insiderName": "COOK TIMOTHY D",
        "insiderTitle": "Chief Executive Officer",
        "relationship": {
          "director": true,
          "officer": true,
          "tenPercentOwner": false
        },
        "security": "Common Stock",
        "transactionCode": "S",
        "transactionType": "Sale",
        "direction": "sell",
        "acquiredDisposed": "D",
        "shares": 511000,
        "pricePerShare": 245.5,
        "value": 125450500,
        "sharesOwnedAfter": 3280000,
        "accessionNumber": "0000320193-25-000118",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000032019325000118/xslF345X05/wf-form4.xml"
      },
      {
        "filingDate": "2025-10-02",
        "transactionDate": "2025-10-01",
        "insiderName": "MAESTRI LUCA",
        "insiderTitle": "Senior Vice President, CFO",
        "relationship": {
          "director": false,
          "officer": true,
          "tenPercentOwner": false
        },
        "security": "Common Stock",
        "transactionCode": "S",
        "transactionType": "Sale",
        "direction": "sell",
        "acquiredDisposed": "D",
        "shares": 74213,
        "pricePerShare": 241.18,
        "value": 17899091,
        "sharesOwnedAfter": 112884,
        "accessionNumber": "0000320193-25-000112",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000032019325000112/xslF345X05/wf-form4.xml"
      },
      {
        "filingDate": "2025-08-20",
        "transactionDate": "2025-08-18",
        "insiderName": "WILLIAMS JEFFREY E",
        "insiderTitle": "Chief Operating Officer",
        "relationship": {
          "director": false,
          "officer": true,
          "tenPercentOwner": false
        },
        "security": "Common Stock",
        "transactionCode": "P",
        "transactionType": "Purchase",
        "direction": "buy",
        "acquiredDisposed": "A",
        "shares": 5000,
        "pricePerShare": 226.4,
        "value": 1132000,
        "sharesOwnedAfter": 489210,
        "accessionNumber": "0000320193-25-000101",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000032019325000101/xslF345X05/wf-form4.xml"
      },
      {
        "filingDate": "2025-08-04",
        "transactionDate": "2025-08-01",
        "insiderName": "ADAMS KATHERINE L",
        "insiderTitle": "Senior Vice President, General Counsel",
        "relationship": {
          "director": false,
          "officer": true,
          "tenPercentOwner": false
        },
        "security": "Common Stock",
        "transactionCode": "A",
        "transactionType": "Grant/Award",
        "direction": null,
        "acquiredDisposed": "A",
        "shares": 25000,
        "pricePerShare": 0,
        "value": 0,
        "sharesOwnedAfter": 312450,
        "accessionNumber": "0000320193-25-000098",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000032019325000098/xslF345X05/wf-form4.xml"
      },
      {
        "filingDate": "2025-08-04",
        "transactionDate": "2025-08-01",
        "insiderName": "O'BRIEN DEIRDRE",
        "insiderTitle": "Senior Vice President",
        "relationship": {
          "director": false,
          "officer": true,
          "tenPercentOwner": false
        },
        "security": "Common Stock",
        "transactionCode": "F",
        "transactionType": "Tax Withholding",
        "direction": null,
        "acquiredDisposed": "D",
        "shares": 8123,
        "pricePerShare": 232.1,
        "value": 1885348,
        "sharesOwnedAfter": 145200,
        "accessionNumber": "0000320193-25-000097",
        "url": "https://www.sec.gov/Archives/edgar/data/320193/000032019325000097/xslF345X05/wf-form4.xml"
      }
    ],
    "summary": {
      "totalTransactions": 5,
      "distinctInsiders": 5,
      "buys": {
        "count": 1,
        "shares": 5000,
        "value": 1132000
      },
      "sells": {
        "count": 2,
        "shares": 585213,
        "value": 143349591
      },
      "netShares": -580213,
      "netValue": -142217591,
      "buySellRatio": 0.01,
      "sentiment": "Bearish",
      "clusterBuy": false
    }
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/insidertrading?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/insidertrading?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/insidertrading?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
