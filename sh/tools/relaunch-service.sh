#!/bin/sh
LANG="zh_CN.UTF-8"
LC_ALL="zh_CN.UTF-8"
source /etc/profile

function relaunch_service
{
        PROJECT_NAME="$1"
        DEBUG_PORT="$2"
        cd ${PROJECT_NAME}
        JAR_NAME=`find . -name "*.jar" | cut -b 3-`

        echo $JAR_NAME
        SERVICE_PID=`ps aux|grep java|grep "${JAR_NAME}"|grep -v grep|awk '{print $2}'`;
        if [ -n "${SERVICE_PID}" ] && [ ${SERVICE_PID} -gt 0 ]; then
                echo "kill -9 ${JAR_NAME}, PID: ${SERVICE_PID}"
                kill -9 ${SERVICE_PID}
        fi

        sleep 5;

        if  test -z "$DEBUG_PORT"
        then
                echo "DEBUG PORT IS NULL"
                echo $JAR_NAME
                nohup java -jar -Xms512m -Xmx512m -Xmn200m $JAR_NAME > /dev/null 2>&1 &
        else
                echo "NOT NULL"
                nohup java -jar -Xms512m -Xmx512m -Xmn200m -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=$DEBUG_PORT $JAR_NAME > /dev/null 2>&1 &
        fi
}

relaunch_service $1 $2