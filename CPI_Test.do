capture log close
log using CPI, replace text
 
*Learning how to use GitHuB
 
version 14
clear all
macro drop _all
set linesize 80

use "/Users/josephgodwin/Documents/Econ Data/CPI Data.dta", clear

gen monthly=mofd(observation_date)
format %tm month
tsset monthly

twoway (tsline CPIAUCSL), ttitle(Time) tlabel(#5, angle(45))

*Summary Statistics
sum CPIAUCSL

*ADF Test No Lag or Trend
dfuller CPIAUCSL, lags(0)

