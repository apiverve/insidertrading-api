# [Insider Trading API](https://apiverve.com/marketplace/insidertrading?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Insider Trading returns recent SEC Form 4 insider transactions for a US public company by ticker - who bought or sold, their role, the number of shares, price and transaction type - plus a derived insider-sentiment summary with net buy/sell activity and cluster-buy detection calculated for you.

The Insider Trading API provides a simple, reliable way to integrate insider trading functionality into your applications. Built for developers who need production-ready insider trading capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/insidertrading?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/insidertrading?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/insidertrading)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.InsiderTrading)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-insidertrading/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_insidertrading)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/insidertrading)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_insidertrading)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callInsiderTradingAPI() {
    try {
        const params = new URLSearchParams({
            ticker: 'AAPL'
        });

        const response = await fetch(`https://api.apiverve.com/v1/insidertrading?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callInsiderTradingAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/insidertrading?ticker=AAPL" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/insidertrading
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/insidertrading) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.InsiderTrading
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.InsiderTrading) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-insidertrading
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-insidertrading/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_insidertrading
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_insidertrading) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/insidertrading
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/insidertrading) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_insidertrading
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_insidertrading) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:insidertrading-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/insidertrading-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Insider Trading API](https://apiverve.com/marketplace/insidertrading?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/insidertrading](https://docs.apiverve.com/ref/insidertrading)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Insider Trading API is commonly used for:

- **Web Applications** - Add insider trading features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with insider trading capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Insider Trading API:

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

---

## Support & Community

- 🏠 **API Home**: [Insider Trading API](https://apiverve.com/marketplace/insidertrading?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
