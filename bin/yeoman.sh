#!/bin/bash

cd "$(dirname "$(dirname "$(dirname "$(dirname "$0")" )" )" )"
source ./components/start-stop.sh/start-stop.sh

name="yeoman"
baseDir="."
logsDir="$baseDir/logs"
run="yeoman"
pidFile="$logsDir/yeoman.pid"

startStop $name $pidFile $1 $0
yeoman server | tee $logsDir/yeoman.log