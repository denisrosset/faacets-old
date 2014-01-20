#!/bin/sh
java -Xss64M -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Xms2048m -Xmx3072m -XX:PermSize=256M -XX:MaxPermSize=512m -XX:ReservedCodeCacheSize=192m -Dfile.encoding=UTF8 -agentpath:/Applications/YourKit_Java_Profiler_2013_build_13066.app/bin/mac/libyjpagent.jnilib -jar /opt/local/share/sbt/sbt-launch.jar
