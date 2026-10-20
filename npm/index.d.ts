declare module '@apiverve/insidertrading' {
  export interface insidertradingOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface insidertradingResponse {
    status: string;
    error: string | null;
    data: InsiderTradingData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface InsiderTradingData {
      ticker:                   null | string;
      cik:                      null | string;
      company:                  null | string;
      totalRecentForm4:         number | null;
      count:                    number | null;
      lastTransactionDate:      Date | null;
      daysSinceLastTransaction: number | null;
      transactions:             Transaction[];
      summary:                  Summary;
  }
  
  interface Summary {
      totalTransactions: number | null;
      distinctInsiders:  number | null;
      buys:              Buys;
      sells:             Buys;
      netShares:         number | null;
      netValue:          number | null;
      buySellRatio:      number | null;
      sentiment:         null | string;
      clusterBuy:        boolean | null;
  }
  
  interface Buys {
      count:  number | null;
      shares: number | null;
      value:  number | null;
  }
  
  interface Transaction {
      filingDate:       Date | null;
      transactionDate:  Date | null;
      insiderName:      null | string;
      insiderTitle:     null | string;
      relationship:     Relationship;
      security:         null | string;
      transactionCode:  null | string;
      transactionType:  null | string;
      direction:        null | string;
      acquiredDisposed: null | string;
      shares:           number | null;
      pricePerShare:    number | null;
      value:            number | null;
      sharesOwnedAfter: number | null;
      accessionNumber:  null | string;
      url:              null | string;
  }
  
  interface Relationship {
      director:        boolean | null;
      officer:         boolean | null;
      tenPercentOwner: boolean | null;
  }

  export default class insidertradingWrapper {
    constructor(options: insidertradingOptions);

    execute(callback: (error: any, data: insidertradingResponse | null) => void): Promise<insidertradingResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: insidertradingResponse | null) => void): Promise<insidertradingResponse>;
    execute(query?: Record<string, any>): Promise<insidertradingResponse>;
  }
}
