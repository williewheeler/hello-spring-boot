#!/usr/bin/env sh

[ -z "$JAVA_XMS" ] && JAVA_XMS=2048m
[ -z "$JAVA_XMX" ] && JAVA_XMX=2048m

set -e
JAVA_OPTS="${JAVA_OPTS} \
  -XX:+UseConcMarkSweepGC \
  -XX:+UseParNewGC \
  -Xms${JAVA_XMS} \
  -Xmx${JAVA_XMX} \
  -Dapplication.name=${APP_NAME} \
  -Dapplication.home=${APP_HOME}"

exec java ${JAVA_OPTS} \
  -jar "${APP_HOME}/${APP_NAME}.jar" \
  --spring.config.location="${APP_CONFIG}/application.yml"
