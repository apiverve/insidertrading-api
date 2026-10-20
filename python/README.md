Insider Trading API
============

Insider Trading returns recent SEC Form 4 insider transactions for a US public company by ticker - who bought or sold, their role, the number of shares, price and transaction type - plus a derived insider-sentiment summary with net buy/sell activity and cluster-buy detection calculated for you.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-insidertrading.svg)](https://pypi.org/project/apiverve-insidertrading/)

This is a Python wrapper for the [Insider Trading API](https://apiverve.com/marketplace/insidertrading?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-insidertrading
```

Using `pip3`:

```bash
pip3 install apiverve-insidertrading
```

---

## Configuration

Before using the Insider Trading API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_insidertrading.apiClient import InsidertradingAPIClient

# Initialize the client with your APIVerve API key
api = InsidertradingAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "type": "buy",
    "limit": 10
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Insider Trading API documentation is found here: [https://docs.apiverve.com/ref/insidertrading](https://docs.apiverve.com/ref/insidertrading?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_insidertrading.apiClient import InsidertradingAPIClient

# Initialize the client with your APIVerve API key
api = InsidertradingAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "ticker": "AAPL",
    "type": "buy",
    "limit": 10
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `InsidertradingAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_insidertrading.apiClient import InsidertradingAPIClient, InsidertradingAPIClientError

api = InsidertradingAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "type": "buy",
    "limit": 10
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except InsidertradingAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_insidertrading.apiClient import InsidertradingAPIClient, InsidertradingAPIClientError

api = InsidertradingAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "type": "buy",
    "limit": 10
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except InsidertradingAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_insidertrading.apiClient import InsidertradingAPIClient, InsidertradingAPIClientError

query = {
    "ticker": "AAPL",
    "type": "buy",
    "limit": 10
}

# Using context manager ensures proper cleanup
with InsidertradingAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except InsidertradingAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_insidertrading.apiClient import InsidertradingAPIClient

# Enable debug mode
api = InsidertradingAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "ticker": "AAPL",
    "type": "buy",
    "limit": 10
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_insidertrading.apiClient import InsidertradingAPIClient

api = InsidertradingAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "type": "buy",
    "limit": 10
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
