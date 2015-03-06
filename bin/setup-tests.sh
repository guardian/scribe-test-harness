#!/bin/bash

# Download the selenium JAR
SELENIUM_VERSION=2.45.0
SELENIUM_MINOR_VERSION=2.45

LOCAL_SELENIUM=vendor/selenium-server-standalone-$SELENIUM_VERSION.jar

mkdir -p vendor

if [ ! -e $LOCAL_SELENIUM ]
then
    wget -O $LOCAL_SELENIUM \
	https://selenium-release.storage.googleapis.com/$SELENIUM_MINOR_VERSION/selenium-server-standalone-$SELENIUM_VERSION.jar
fi

# Check that the Chrome driver is present for Selenium
command -v chromedriver >/dev/null 2>&1
CHECK_RESULT=$?

if [ $CHECK_RESULT != 0 ]
then
	echo 'Please install chromedriver for your os'
	exit 1
fi