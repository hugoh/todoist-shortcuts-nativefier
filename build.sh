#!/bin/bash
git submodule update --init --recursive
COUNTER_JS=./counter.js
TODOIST_SHORTCUTS_JS=./todoist-shortcuts/src/todoist-shortcuts.js
./node_modules/.bin/nativefier 'https://todoist.com/app' --name 'Todoist' --icon ./todoist-icon.png --inject $TODOIST_SHORTCUTS_JS --inject $COUNTER_JS --counter --bounce --single-instance
