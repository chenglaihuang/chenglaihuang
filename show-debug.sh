#!/bin/bash

# Set this to your debug category file path
DEBUG_CATEGORY_FILE="feature/debug-settings/src/main/java/com/duolingo/feature/debug/settings/DebugCategories.kt"

function startStory() {
  local storyId="${1:-fr-en-sink-repairman_new_lexemes_PR}"
  showdebug stories-settings
  sleep 1
  adb shell input keyevent 61 # tab
  adb shell input keyevent 61
  adb shell input text "$storyId"
  adb shell input keyevent 61
  adb shell input keyevent 66 # enter
}

function startSessionEndScreen() {
  local screenId="${1:-sessionComplete}"
  showdebug session-end-screens
  sleep 2
  adb shell input keyevent 61 # tab
  adb shell input keyevent 61
  adb shell input text "$screenId"
}


# Usage: showdebug to open activity, or showdebug <id> from debugids to pick a screen
function showdebug() {
  if [ ! -z $1 ]; then
    echo $1
    make show-debug ID=$1
  else
    make show-debug
  fi
}

alias debugids="sed -nE 's/.*id = \"([^\"]+)\".*/\1/p' $DEBUG_CATEGORY_FILE"
