## US FINANCIAL CONSUMER COMPLAINTS ANALYSIS

## Business Problem
The Consumer Financial Protection Bureau (CFPB) publishes complaints submitted by consumers against financial companies. As a data analyst at a regulatory consulting firm, the objective of this project was to identify high-risk financial products and companies based on complaints volume, response patterns, and seasonal trends- enabling regulators to prioritize enforcement actions effectively.
## Dataset
- **Source:** Consumer Financial Protection Bureau via Kaggle
- **Period:** 2015 to 2016
- **Records:** 3,06,000+ complaints
- **Key columns:** Product, Company, Issue, Date Received, Timely Response, Consumer Disputed, State
## Tools Used
Power BI Desktop, Power Query for data cleaning and transformation.
## Key Findings
### Finding 1 – Product Risk
Mortgage, Debt Collection, and Credit Reporting account for the majority of complaints. These three products alone represent the highest regulatory risk and warrant priority attention.
### Finding 2 – Company Performance
Mortgage complaints are dominated by Ocwen, Bank of America, and Wells Fargo. It is followed by Debt collection and Encore Capital group has the highest number of complaints in this category. Portfolio Recovery Association, Inc. and ERC have received the second and third highest complaints in this category. Filtering by Credit Reporting reveals Equifax and Experian as the primary offenders in that category. This product-level drill down allows regulators to identify which specific companies to target within each complaint category.
### Finding 3 – Seasonal Pattern
Complaint volume spikes significantly in January through March each year, with March showing the highest monthly count. Financial companies should increase customer service capacity during Q1 to manage this seasonal surge.
### Finding 4 - Response Rate
97.43% of complaints received a timely response. However, the remaining represents over 7800 unresolved complaints – a meaningful number at scale. 
## Recommendations
Regulators should prioritize investigations into the companies which have the highest share of complaints- highly disproportionately complaint volumes relative to industry peers. Financial institutions should focus process improvement efforts on Mortgage and Debt Collection products which drive the highest complaint volumes. All companies should prepare for Q1 complaint surges with adequate customer support resourcing.
Dashboard
Built using Power BI desktop with interactive product slicer enabling drill-down analysis by financial product category.
