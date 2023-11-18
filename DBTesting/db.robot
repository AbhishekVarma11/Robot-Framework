*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBName}    test_db
${DBUser}    root 
${DBPass}    root 
${DBHost}    127.0.0.1
${DBPort}    3306

*** Test Cases ***

# Create Person Table    
#     ${Output}=    Execute Sql String    Create table person(id integer,first_name varchar(20),last_name varchar(20))
#     Log To Console    ${Output}
#     Should Be Equal As Strings    ${Output}    None

# Inserting Data in Person Table
#     ${Output}=    Execute Sql String    insert into person values(101,'person1','x1')
#     Should Be Equal As Strings    ${Output}    None

# Inserting Multiple sets of Data in Person Table
    
#     ${Output}=    Execute Sql Script    person_InsertData.Sql
#     Should Be Equal As Strings    ${Output}    None

Check person3 record present in person table
    Check If Exists In Database    select id from test_db.person where first_name='person3'

Check person10 record not present in person table
    Check If not Exists In Database    select id from test_db.person where first_name='person10'

check person table exists in test_db Database
    Table Must Exist    person
verify row count is zero
    row count is 0    select * from test_db.person where first_name='xyz'

verify row count is equal to some value 
    Row Count Is Equal To X    select * from test_db.person where first_name='john'    1    numRows

update record in person table
    ${Output}=    Execute Sql String    update person set first_name='abhi' where id=102
    Should Be Equal As Strings    ${Output}    None

Retrieve records from person table
    ${resultset}       Query    Select * from test_db.person
    Log To Console    ${resultset}

Delete record from person table
    ${Output}   Execute sql String     Delete from test_db.person where id=105
    Log To Console    ${Output}