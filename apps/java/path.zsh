#!/bin/sh
export JAVA_HOME=$(echo $(readlink -e $(which java)) | sed 's/oracle.*/oracle/')