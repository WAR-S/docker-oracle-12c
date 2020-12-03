Oracle Standard Edition 12c Release 1
============================
Проверки:
[![](https://raw.githubusercontent.com/WAR-S/docker-oracle-12c/master/my_work/CHECK%20CONSTAINER.bmp)]
[![](https://sun9-9.userapi.com/impg/dbPJlc3Bhf5YOKW_tNIXYIvfhsRwTqkFuCcKjg/uZElyVxuxmU.jpg?size=1920x1080&quality=96&proxy=1&sign=e2c0d8a7bbe359a6d9c9b447a0f2d16e)]
Oracle Standard Edition 12c Release 1 on Ubuntu
This **Dockerfile** is a [trusted build](https://registry.hub.docker.com/u/sath89/oracle-12c/) of [Docker Registry](https://registry.hub.docker.com/).

[![asciicast](https://asciinema.org/a/45878.png)](https://asciinema.org/a/45878)

### Installation

    docker pull sath89/oracle-12c

Run with 8080 and 1521 ports opened:

    docker run -d -p 8080:8080 -p 1521:1521 sath89/oracle-12c

Run with data on host and reuse it:

    docker run -d -p 8080:8080 -p 1521:1521 -v /my/oracle/data:/u01/app/oracle sath89/oracle-12c

Run with Custom DBCA_TOTAL_MEMORY (in Mb):

    docker run -d -p 8080:8080 -p 1521:1521 -v /my/oracle/data:/u01/app/oracle -e DBCA_TOTAL_MEMORY=1024 sath89/oracle-12c

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



