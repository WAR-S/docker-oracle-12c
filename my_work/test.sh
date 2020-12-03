#!/bin/bash
while [ true ]; do
  echo "uptime = `uptime -p` '"
  sqlplus sus/12345@//192.168.99.100:1521/xe @test.sql
  sleep 30
done
