# REPOSITORY FOR EX SITU PGRFA METRICS
Repository with the methodology to produce a set of metrics on the ex-situ conservation of PGRFA

It includes: 

0)Downloading data (Genesys, WIEWS, BGCI, GLIS, SGSV)
Only GLIS data downloaded through API. 

1)Loading and merging data from different sources (Genesys, WIEWS, BGCI, GLIS, SGSV)

2)Standardising taxa

3)Computing the metrics
This work is currently on-going. Clarify and clean code for PTFTW metrics

4)Produce tables
Code for tables goes here

# General
code: 
- General principle is that simple and clean code should make easier to collaborate and to identify and correct errors
- When sharing code in the repository, do not include code used only for testing or inspecting the data (for example, "View(dataframe)")
- Avoid redundant code (i.e. load same library multiple times in same script)
- Avoid repeating the same code by creating functions


Names of columns and values: use MCPD standard as much as possible rather than arbitrary labels. MCPD standard can be found here: https://cgspace.cgiar.org/server/api/core/bitstreams/7947d48c-5cf1-4164-8c61-fa276d658463/content![image](https://github.com/user-attachments/assets/b95cc8cb-f982-4a21-ab18-c4e36a6aeeef). 

Always use INSTCODE to identify a collection holder instead of the full institute name

# On-going
Cleaning up, updating, and streamlining the code to estimate the metrics

# Notes on current implementation
Country codes: country codes for Yugoslavia (YUG) and Czechoslovakia (CSK) are not recoded to new countries as this would lead to multiple countries for one accession, which would cause problems when computing the metrics. Instead, assess the number of accession with YUG and CSK in ORGICTY field and their impact on the metric.  

Regions of diversity variables: 
Function assign True/False value based on country of collection. Then the metrics (metric 6) count only accessions with SAMPSTAT < 399 and SAMPSTAT with missing values (NA), i.e. landraces, wild, and weedy material. 

BGCI data:
country in BGCI dataset is not country of origin but it is country of institute holding the accession. Therefore, the code for this part was deleted. 

GLIS data:
Fetched JSON data with GLIS API for each of the genus. Selected fields were then extracted from each JSON to create a dataframe, this was then saved as a csv file. Cropstrategy column to be added after taxa are standardized. 

SGSV data:
Loaded data, added MLSSTAT columns (based on MLS column). Dropped duplicate accessions based on INSTCODE and ACCENUMB. Cropstrategy column to be added after taxa are standardized. 
