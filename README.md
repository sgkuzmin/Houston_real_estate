# Houston real estate
Analyses of asking price versus tax value of residential houses in Houston.  



Objective: compare the tax value of Houston real estate vs the asking price of residential housing

Technical: Database PostgreSQL

Source Data: HAR, HCAD

Will focus on specific zip codes in the Harris county. 

Main files descriptions:

data folder contains a database file from HCAD with all the appraised values for real properties in the Harris county

houston_real_estate.ipynb  -- this notebook loads HCAD data to dataframe cleans it and loads the data into postgresql database

Houston_real_estate_scraping.ipynb  -- this notebook scrapes the data from har.com website to get asking prices for houses curently on the market

Houston_real_estate_plots.ipynb  -- this notebook pulls the data from postgersql database and compares data from har to data from HCAD

harris_county_zip_codes.csv list of Harris county zip codes to do the analysis

har_data.csv  -- data scraped frpm har.com website

Houston_Real_Estate_final_presentation.pptx  -- final presentation for the project





