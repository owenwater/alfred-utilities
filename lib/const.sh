#!/bin/bash

WORKFLOW_PATH="/Users/$USER/Library/Application Support/Alfred 2/Alfred.alfredpreferences/workflows"
DEFAULT_SETTING="/Users/$USER/Library/Application Support/Alfred 2/Alfred.alfredpreferences/preferences/workflows/prefs.plist"
DATA_PATH="/Users/$USER/Library/Caches/com.runningwithcrayons.Alfred-2/Workflow Data"

WORKFLOW_DIR_PREFIX="user.workflow."
INFO_PLIST="info.plist"

PLIST="/usr/libexec/PlistBuddy"
CMD="`basename $0`"
