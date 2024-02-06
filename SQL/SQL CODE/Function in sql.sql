/*FUNCTIONS IN SQL*/

select ascii('CB');                                          /*return leftmost ascii value*/
select char(66);                                           /*return ascii value to character*/
select length('Microsift sql');                           /*return length*/
select lower('JHON');                                    /*convert to lowercase*/
select replace('Microsoft sql','sql','server');         /*replace*/
select reverse('python');                               /*reverse the string */
select upper('monika');                               /*converts to upper*/

/*Mathematical Functions*/
select abs(-101);                       /*returns absolute value*/
select sin(1.5);                         /*returns angle in radians*/
select ceiling(14.01);                     /*returns the smallest or greater to the specified value*/
select exp(4.5);                              /*returns the exponencial value*/
select floor(14.75);
select log(5.4);                                /*return logarithmic value*/

/* Date Functions*/

select now();                                          /*get current date and time*/
select day ( '2023-05-30');                               /*return value of date of that particular day*/
select month ('2023-05-31');                                 /*return month value*/
select year ( '2023-05-3');                                     /*return year value*/
select date_add("2017-06-15", interval 10 day);
/*select datediff ( year, convert (datetime, '2006-05-06'), /*convert ( datetime, '2009-01-01'));/*it will return the difference of date,months,years also*/
select datepart (month, '2008-5-22');                            /*return months value*/

