# Process Mining and Bottleneck Analysis

## Overview
A beginner-level process analytics project using Python, Pandas, and SQL to analyse a fictional order-processing event log, calculate order cycle times, and identify process transitions with long elapsed times.

## Objective
- Analyse event logs using case IDs, activities, and timestamps.
- Validate data quality and event records.
- Calculate end-to-end cycle time for each order.
- Measure elapsed time between consecutive activities.
- Identify potential bottlenecks and communicate findings.

## Tools and Technologies
- Python
- Pandas
- SQL (SQLite)
- Matplotlib
- Google Colab

## Methodology
1. Created a sample event log containing order IDs, activities, and timestamps.
2. Checked for missing values and exact duplicate records.
3. Calculated end-to-end cycle time for each order.
4. Used SQL window functions to analyse transitions between consecutive activities.
5. Summarised and visualised average elapsed time by process transition.

## Key Findings
- Analysed 25 event records across 6 fictional orders.
- Found no missing values or exact duplicate rows.
- Average end-to-end cycle time was approximately 14.42 hours.
- The **Order Packed → Order Shipped** transition had the highest average elapsed time: approximately 10.67 hours across 6 transitions.
- One order contained a repeated packing activity, representing a process variation worth investigating.

## Limitations
The dataset is small and fictional. Elapsed time includes non-working hours, so the analysis identifies potential delay points but does not establish their causes. These results should not be generalised to a real business process.

## Future Improvements
- Analyse a larger event log.
- Add more process performance indicators.
- Explore Celonis process-mining capabilities.
- Add automated data-quality checks and tests.
