#!/bin/sh

## Script to update the necessary files from templates

file=app/build.gradle
cat ${file}.template | sed "s/<JAVA_VERSION>/$TEMPLATE_JAVA_VERSION/" | sed "s/<JVM_TARGET_VERSION>/$TEMPLATE_JVM_TARGET_VERSION/" > $file

file=gradle/wrapper/gradle-wrapper.properties
cat ${file}.template | sed "s/<GRADLE_VERSION>/$TEMPLATE_GRADLE_VERSION/" > $file

file=settings.gradle
cat ${file}.template | sed "s/<GRADLE_PLUGIN_VERSION>/$TEMPLATE_GRADLE_PLUGIN_VERSION/" | sed "s/<KOTLIN_VERSION>/$TEMPLATE_KOTLIN_VERSION/" > $file

