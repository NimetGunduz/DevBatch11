DmlDemo.dmInsertDemo_stndObj();
DmlDemo.dmlInsertDemo_cstmObj();
DmlDemo.dmlUpdateDemo_1();
DmlDemo.dmlUpdateDemo_3();
DmlDemo.dmlInsertDemo_4();
DmlDemo.dmlInsertDemo_5();
//DmlDemo.dmlInsertMultiple_wrong();

DmlDemo.dmlInsertMultiple_right();
DmlDemo.dmlInsertMultiple_right2();

DmlDemo.dmlUpdateMultiple_right1();

//list<account> delAcc = [select id from account where name like '%B.0%'];
delete [select id from account where name like '%B.0%'];
//delete [select id from account where name createddate = THIS_WEEK];

