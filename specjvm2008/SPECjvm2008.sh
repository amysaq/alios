#!/bin/bash
echo "***start Alipay_JDK7 benchmark***"
cd ./SPECjvm2008
rm ./results/* -rf
~/build/linux-amd64/Alipay_JDK7/j2sdk-server-image/bin/java -jar SPECjvm2008.jar -ikv --lagom -bt 8 -ops 15 -i 5 -pf props/specjvm.properties
echo "***start JDK6 benchmark***"
/opt/taobao/java/bin/java -jar SPECjvm2008.jar -ikv --lagom -bt 8 -ops 15 -i 5 -pf props/specjvm.properties
echo "***Benchmark Complete***"
