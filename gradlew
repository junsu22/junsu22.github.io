#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

APP_NAME="Gradle"
APP_BASE_NAME=$(basename "$0")

# Resolve the location of the script
# https://unix.stackexchange.com/a/477406
get_script_dir() {
  SOURCE="${BASH_SOURCE[0]}"
  while [ -h "$SOURCE" ]; do
    DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
  done
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  echo "$DIR"
}

APP_HOME=$(get_script_dir)

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

# Escape application args
save() {
  for arg; do
    printf '%s\n' "$arg"
  done
}

exec java ${DEFAULT_JVM_OPTS} -cp "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
