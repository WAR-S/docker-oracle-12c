Oracle Standard Edition 12c Release 1
============================
Проверкa:

![](https://sun9-9.userapi.com/impg/dbPJlc3Bhf5YOKW_tNIXYIvfhsRwTqkFuCcKjg/uZElyVxuxmU.jpg?size=1920x1080&quality=96&proxy=1&sign=e2c0d8a7bbe359a6d9c9b447a0f2d16e)


### Installation
ORACLE DB:

    docker pull war1s/tz

Run with 8080 and 1521 ports opened:

    docker run -d -p 8080:8080 -p 1521:1521 war1s/tz

Run with data on host and reuse it:

    docker run -d -p 8080:8080 -p 1521:1521 -v /my/oracle/data:/u01/app/oracle war1s/tz

Run with Custom DBCA_TOTAL_MEMORY (in Mb):

    docker run -d -p 8080:8080 -p 1521:1521 -v /my/oracle/data:/u01/app/oracle -e DBCA_TOTAL_MEMORY=1024 war1s/tz
Connect database with following setting:

    hostname: localhost
    port: 1521
    sid: xe
    service name: xe
    username: system
    password: oracle

To connect using sqlplus:

<pre>
sqlplus system/oracle@//localhost:1521/xe
</pre>

Password for SYS & SYSTEM:

    oracle
LOGS:
![](https://sun9-11.userapi.com/impg/9kJmfKYA5Lpcx06HgA4OmCpkyPZYcVDpoQzhHw/tHi3vjJoPmE.jpg?size=1920x1080&quality=96&proxy=1&sign=f12b68d6e3cd49f3cd495f223853b1e8)
### Installation
Monitoring db:

    docker pull war1s/testin_db
Run:

    docker run war1s/testin_db
    
![](https://raw.githubusercontent.com/WAR-S/docker-oracle-12c/master/my_work/CHECK%20CONSTAINER.bmp)

