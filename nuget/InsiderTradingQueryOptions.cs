using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.InsiderTrading
{
    /// <summary>
    /// Query options for the Insider Trading API
    /// </summary>
    public class InsiderTradingQueryOptions
    {
        /// <summary>
        /// Stock ticker symbol (e.g. AAPL, MSFT, ADBE)
        /// </summary>
        [JsonProperty("ticker")]
        public string Ticker { get; set; }

        /// <summary>
        /// Filter to open-market buys or sells (buy or sell).
        /// </summary>
        [JsonProperty("type")]
        public string Type { get; set; }

        /// <summary>
        /// Number of transactions to return (1-25). Defaults to 5.
        /// </summary>
        [JsonProperty("limit")]
        public int? Limit { get; set; }
    }
}
