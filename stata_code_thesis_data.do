use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2010\household\hh1a.dta", clear
drop h103_m h103_y h105 h106 h107_1 h107_2 h107_3 h109 h110
drop if h102==2
drop if age < 25
drop if age > 46
keep if h108==1
keep if h104==1
drop h102 h108 h104
gen year=2010
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\married_males_2010.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2011\household\hh1a.dta", clear
drop h103_m h103_y h105 h107_1 h107_2 h107_3 h109 h110
drop if h102==2
drop if age < 25
drop if age > 46
keep if h108==1
keep if h104==1
drop h102 h108 h104
gen year=2011
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\married_males_2011.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2012\household\hh1a.dta", clear
drop h103_m h103_y h105 h107_1 h107_2 h107_3 h109 h110
drop if h102==2
drop if age < 25
drop if age > 46
keep if h108==1
keep if h104==1
drop h102 h108 h104
gen year=2012
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\married_males_2012.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2010\individial\id2.dta", clear
keep hhid pid i207
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\education_2010.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2011\individual\id2.dta", clear
keep hhid pid i207
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\education_2011.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2012\individual\id2.dta", clear
keep hhid pid i207
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\education_2012.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2010\individial\id3.dta", clear
keep hhid pid i305_1 i306_1 i307 i308 i314_s i314_d i314_t i319 i320_s i320_d i320_t
gen wage_m = 30*i314_s if i314_t==1
replace wage_m = 30*i320_s if i320_t==1 & wage_m==.
replace wage_m = 4*i314_s if i314_t==2 & wage_m==.
replace wage_m = 4*i320_s if i320_t==2 & wage_m==.
replace wage_m = i314_s if i314_t==3 & wage_m==.
replace wage_m = i320_s if i320_t==3 & wage_m==.
replace wage_m = 30*45.983*i314_d if i314_t==1 & wage_m==.
replace wage_m = 30*45.983*i320_d if i320_t==1 & wage_m==.
replace wage_m = 4*45.983*i314_d if i314_t==2 & wage_m==.
replace wage_m = 4*45.983*i320_d if i320_t==2 & wage_m==.
replace wage_m = 45.983*i314_d if i314_t==3 & wage_m==.
replace wage_m = 45.983*i320_d if i320_t==3 & wage_m==.
keep hhid pid i306_1 wage_m i307 i308
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\hours_wages_2010.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2011\individual\id3.dta", clear
keep hhid pid i305_1 i306_1 i307 i308 i314_s i314_d i314_t i319 i320_s i320_d i320_t
gen wage_m = 30*i314_s if i314_t==1
replace wage_m = 30*i320_s if i320_t==1 & wage_m==.
replace wage_m = 4*i314_s if i314_t==2 & wage_m==.
replace wage_m = 4*i320_s if i320_t==2 & wage_m==.
replace wage_m = i314_s if i314_t==3 & wage_m==.
replace wage_m = i320_s if i320_t==3 & wage_m==.
replace wage_m = 30*46.136*i314_d if i314_t==1 & wage_m==.
replace wage_m = 30*46.136*i320_d if i320_t==1 & wage_m==.
replace wage_m = 4*46.136*i314_d if i314_t==2 & wage_m==.
replace wage_m = 4*46.136*i320_d if i320_t==2 & wage_m==.
replace wage_m = 46.136*i314_d if i314_t==3 & wage_m==.
replace wage_m = 46.136*i320_d if i320_t==3 & wage_m==.
keep hhid pid i306_1 wage_m i307 i308
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\hours_wages_2011.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2012\individual\id3.dta", clear
keep hhid pid i305_1 i306_1 i307 i308 i314_s i314_d i314_t i319 i320_s i320_d i320_t
gen wage_m = 30*i314_s if i314_t==1
replace wage_m = 30*i320_s if i320_t==1 & wage_m==.
replace wage_m = 4*i314_s if i314_t==2 & wage_m==.
replace wage_m = 4*i320_s if i320_t==2 & wage_m==.
replace wage_m = i314_s if i314_t==3 & wage_m==.
replace wage_m = i320_s if i320_t==3 & wage_m==.
replace wage_m = 30*47.005*i314_d if i314_t==1 & wage_m==.
replace wage_m = 30*47.005*i320_d if i320_t==1 & wage_m==.
replace wage_m = 4*47.005*i314_d if i314_t==2 & wage_m==.
replace wage_m = 4*47.005*i320_d if i320_t==2 & wage_m==.
replace wage_m = 47.005*i314_d if i314_t==3 & wage_m==.
replace wage_m = 47.005*i320_d if i320_t==3 & wage_m==.
keep hhid pid i306_1 wage_m i307 i308
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\hours_wages_2012.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2010\household\hh5.dta", clear
drop if incom==1 | income==2 | income==3 | income==4 | income==17 | income==18
collapse(sum)nonwageincome = h502, by (hhid)
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\nonwage_income_2010.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2011\household\hh5.dta", clear
drop if n5==1 | n5==2 | n5==3 | n5==4 | n5==17 | n5==18
collapse(sum)nonwageincome = h502, by (hhid)
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\nonwage_income_2011.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\LIK_10_13\data2012\household\hh5.dta", clear
drop if n5==1 | n5==2 | n5==3 | n5==4 | n5==17 | n5==18
collapse(sum)nonwageincome = h502, by (hhid)
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\nonwage_income_2012.dta", replace

cd "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata"

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\married_males_2010.dta", clear
merge 1:1 hhid pid using hours_wages_2010.dta
keep if _merge==3
drop _merge
merge 1:1 hhid pid using education_2010.dta
keep if _merge==3
drop _merge
merge 1:1 hhid using nonwage_income_2010.dta
keep if _merge==3
drop _merge
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\merged_2010.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\married_males_2011.dta", clear
merge 1:1 hhid pid using hours_wages_2011.dta
keep if _merge==3
drop _merge
merge 1:1 hhid pid using education_2011.dta
keep if _merge==3
drop _merge
merge 1:1 hhid using nonwage_income_2011.dta
keep if _merge==3
drop _merge
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\merged_2011.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\married_males_2012.dta", clear
merge 1:1 hhid pid using hours_wages_2012.dta
keep if _merge==3
drop _merge
merge 1:1 hhid pid using education_2012.dta
keep if _merge==3
drop _merge
merge 1:1 hhid using nonwage_income_2012.dta
keep if _merge==3
drop _merge
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\merged_2012.dta", replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\merged_2010.dta", clear
cd "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata"

append using merged_2011.dta
append using merged_2012.dta

gen ln_h = ln(i306_1)
gen ln_w = ln(wage_m/(4*i306_1))
gen ln_earn = ln(wage_m/4)

drop if ln_w==.
drop if ln_h==.
drop if ln_earn==.

sort hhid year
tempvar panel
egen panel=count(1),by(hhid)
gen balance=1 if panel==3
drop if balance==.
sort hhid year
drop panel balance

gen year2010=1 if year==2010
gen year2011=1 if year==2011
gen year2012=1 if year==2012
replace year2010=0 if year2010==.
replace year2011=0 if year2011==.
replace year2012=0 if year2012==.

replace i207=0 if i207==1
replace i207=9 if i207==3
replace i207=12 if i207==5
replace i207= 16 if i207==6
replace i207=18 if i207==7
replace i207=23 if i207==8
replace i207=3 if i207==4
replace i207=4 if i207==2
replace i207=11 if i207==3

rename i207 educ
gen educ_sq=educ^2
gen age_sq=age^2
gen educ_age=educ*age
gen educ_sq_age=educ_sq*age
gen educ_age_sq=educ*age_sq
gen educ_sq_age_sq=educ_sq*age_sq

merge m:1 hhid using rural_urban.dta
keep if _merge==3
drop _merge

save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\data.dta", replace

cd "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata"
xtset hhid year, yearly

reg D.ln_h D.ln_w

xtivreg2 ln_h (ln_w=educ educ_sq age age_sq educ_age educ_sq_age educ_age_sq educ_sq_age_sq year2010 year2011 year2012 urban rural), fd first
outreg2 using delta.doc
gen b_hat1 = _b[_cons]*age
gen delta_hat1 = _b[D1.ln_w]*ln_w
gen f1 = ln_h - b_hat1 - delta_hat1

xtivreg2 ln_h year2010 year2011 year2012 (ln_w=educ educ_sq age age_sq educ_age educ_sq_age educ_age_sq educ_sq_age_sq year2010 year2011 year2012 urban rural), fd nocon first
outreg2 using delta.doc

reg D.ln_h D.ln_earn

xtivreg2 ln_h (ln_earn=educ educ_sq age age_sq educ_age educ_sq_age educ_age_sq educ_sq_age_sq year2010  year2011 year2012 urban rural), fd first
outreg2 using delta.doc
gen b_hat2 = _b[_cons]*age
gen delta_hat2 = _b[D1.ln_earn]*ln_earn
gen f2 = ln_h - b_hat2 - delta_hat2

xtivreg2 ln_h year2010 year2011 year2012 (ln_earn=educ educ_sq age age_sq educ_age educ_sq_age educ_age_sq educ_sq_age_sq year2010  year2011 year2012 urban rural), fd nocon first
outreg2 using delta.doc

reg D.ln_w D.(educ educ_sq age age_sq educ_age educ_sq_age educ_age_sq educ_sq_age_sq year2010 year2011 year2012)
outreg2 using first.delta.doc

reg D.ln_earn D.(educ educ_sq age age_sq educ_age educ_sq_age educ_age_sq educ_sq_age_sq year2010 year2011 year2012)
outreg2 using first.delta.doc

keep hhid pid age ln_w nonwageincome f1 f2
order hhid pid age ln_w nonwageincome f1 f2
outsheet using "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\data.csv", comma replace

use "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\merged_2010.dta", clear
keep hhid pid i307 i308 i207
replace i207=0 if i207==1
replace i207=9 if i207==3
replace i207=12 if i207==5
replace i207= 16 if i207==6
replace i207=18 if i207==7
replace i207=23 if i207==8
replace i207=3 if i207==4
replace i207=4 if i207==2
replace i207=11 if i207==3
rename i207 educ
gen educ_sq=educ^2

gen pos=i307
drop if pos==.
reshape wide i307, i(hhid pid) j(pos)

replace i3072 = 1 if i3072 == 2
replace i3073 = 1 if i3073 == 3
replace i3074 = 1 if i3074 == 4
replace i3075 = 1 if i3075 == 5
replace i3076 = 1 if i3076 == 6
replace i3077 = 1 if i3077 == 7
replace i3078 = 1 if i3078 == 8
replace i3079 = 1 if i3079 == 9
replace i30710 = 1 if i30710 == 10

gen pos=i308
drop if pos==.
reshape wide i308, i(hhid pid) j(pos)

replace i3082 = 1 if i3082 == 2
replace i3083 = 1 if i3083 == 3
replace i3084 = 1 if i3084 == 4
replace i3085 = 1 if i3085 == 5
replace i3086 = 1 if i3086 == 6
replace i3087 = 1 if i3087 == 7
replace i3088 = 1 if i3088 == 8
replace i3089 = 1 if i3089 == 9
replace i30810 = 1 if i30810 == 10
replace i30811 = 1 if i30811 == 11
replace i30812 = 1 if i30812 == 12
replace i30813 = 1 if i30813 == 13
replace i30814 = 1 if i30814 == 14
replace i30815 = 1 if i30815 == 15

mvencode i3071 i3072 i3073 i3074 i3075 i3076 i3077 i3078 i3079 i30710 i3081 i3082 i3083 i3084 i3085 i3086 i3087 i3088 i3089 i30810 i30811 i30812 i30813 i30814 i30815, mv(0)

*rename i3071 legisl_senioroff_manager
*rename i3072 professional
*rename i3073 technician_assocprofessional
*rename i3074 clerk
*rename i3075 service_shopmarketsales_worker
*rename i3076 agricul_skilled
*rename i3077 craft_relatedtrade
*rename i3078 operator_driver
*rename i3079 unskilled
*rename i30710 army

*rename i3081 agricul_fish
*rename i3082 mining
*rename i3083 manufac
*rename i3084 energy_water
*rename i3085 construct
*rename i3086 trade_repair
*rename i3087 hotel_restaur
*rename i3088 transp_commun
*rename i3089 finance
*rename i30810 realest_rent_business
*rename i30811 pub_admin
*rename i30812 education
*rename i30813 health_socwork
*rename i30814 utilities
*rename i30815 priv_hh_empl
*rename i30816 extra-terr
save "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\ivs.dta", replace

*run the code in R and then:
insheet using "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata\data_r.csv", comma clear

cd "C:\Users\User\Desktop\×èíà\CEU\MA Thesis\stata"
merge 1:1 hhid pid using ivs.dta
keep if _merge==3
drop _merge

merge 1:1 hhid using rural_urban.dta
keep if _merge==3
drop _merge

ivreg2 f_tilda1 (pie0 pie1 pie2 alpha0 = educ educ_sq i3071 i3072 i3073 i3074 i3075 i3076 i3077 i3078 i3079 i30710 i3081 i3082 i3083 i3084 i3085 i3086 i3087  i3088 i3089 i30810 i30811 i30812 i30813 i30814 i30815 urban), first
outreg2 using gammas.doc
ivreg2 f_tilda2 (pie0 pie1 pie2 alpha0 = educ educ_sq i3071 i3072 i3073 i3074 i3075 i3076 i3077 i3078 i3079 i30710 i3081 i3082 i3083 i3084 i3085 i3086 i3087  i3088 i3089 i30810 i30811 i30812 i30813 i30814 i30815 urban), first
outreg2 using gammas.doc

reg pie0 educ educ_sq i3071 i3072 i3073 i3074 i3075 i3076 i3077 i3078 i3079 i30710 i3081 i3082 i3083 i3084 i3085 i3086 i3087 i3088 i3089 i30810 i30811 i30812 i30813 i30814 i30815 urban
outreg2 using first.gammas.doc
*predict pie0_hat

reg pie1 educ educ_sq i3071 i3072 i3073 i3074 i3075 i3076 i3077 i3078 i3079 i30710 i3081 i3082 i3083 i3084 i3085 i3086 i3087 i3088 i3089 i30810 i30811 i30812 i30813 i30814 i30815 urban
outreg2 using first.gammas.doc
*predict pie1_hat

reg pie2 educ educ_sq i3071 i3072 i3073 i3074 i3075 i3076 i3077 i3078 i3079 i30710 i3081 i3082 i3083 i3084 i3085 i3086 i3087 i3088 i3089 i30810 i30811 i30812 i30813 i30814 i30815 urban
outreg2 using first.gammas.doc
*predict pie2_hat

reg alpha0 educ educ_sq i3071 i3072 i3073 i3074 i3075 i3076 i3077 i3078 i3079 i30710 i3081 i3082 i3083 i3084 i3085 i3086 i3087 i3088 i3089 i30810 i30811 i30812 i30813 i30814 i30815 urban
outreg2 using first.gammas.doc
*predict alpha0_hat

*reg f_tilda1 pie0_hat pie1_hat pie2_hat alpha0_hat
*outreg2 using gammas.doc, replace ctitle(f_tilda for ln_wages)
*reg f_tilda2 pie0_hat pie1_hat pie2_hat alpha0_hat
*outreg2 using gammas.doc, append ctitle(f_tilda for ln_earnings

*reg3 (f_tilda1 pie0 pie1 pie2 alpha0_hat), endog(pie0 pie1 pie2) exog (educ educ_sq urban)
