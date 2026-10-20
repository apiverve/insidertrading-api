# Insider Trading API

Insider Trading returns recent SEC Form 4 insider transactions for a US public company by ticker - who bought or sold, their role, the number of shares, price and transaction type - plus a derived insider-sentiment summary with net buy/sell activity and cluster-buy detection calculated for you.

[![npm version](https://img.shields.io/npm/v/@apiverve/insidertrading.svg)](https://www.npmjs.com/package/@apiverve/insidertrading)

This is a JavaScript wrapper for the [Insider Trading API](https://apiverve.com/marketplace/insidertrading?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/insidertrading
```

Using yarn:
```shell
yarn add @apiverve/insidertrading
```

---

## Configuration

Before using the Insider Trading API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Insider Trading API documentation is found here: [https://docs.apiverve.com/ref/insidertrading](https://docs.apiverve.com/ref/insidertrading?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const insidertradingAPI = require('@apiverve/insidertrading');
const api = new insidertradingAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  ticker: "AAPL",
  type: "buy",
  limit: 10
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  ticker: "AAPL",
  type: "buy",
  limit: 10
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  ticker: "AAPL",
  type: "buy",
  limit: 10
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
