*12345678901234567890123456789012345678901234567890123456789012345678901234567890
clear
set more off
#delimit;

cd "/Users/alr/Documents/School/Spring '11/Senior Honors II/";

log using output2.log, replace;


    **************************************************************************;
    *    File-Name:      rajaram_aditi_2.do                                  *;
    *    Date:           February 27, 2011                                   *;
    *    Author:         Aditi Rajaram                                       *;
    *    Data Input:     merged4.dta                                         *;
    *    Output File:    output2.log                                         *;
    *    Previous file:  None                                                *;
    **************************************************************************;


    **************************************************************************;
    *    loading data into stata  (merged4.dta)                              *;
    **************************************************************************;

    use merged4.dta;

    **************************************************************************;
    *    summary statistics                                                  *;
    **************************************************************************;

    sum;

    **************************************************************************;
    *    regression                                                          *;
    **************************************************************************;

    xtset ccode year;
    xtreg internetpc polity2 gdppc dollarcurpc;
    reg internetpc polity2 gdppc dollarcurpc;

  
log close;
