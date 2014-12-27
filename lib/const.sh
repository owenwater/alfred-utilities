#!/bin/bash

DEFAULT_WORKFLOW_PATH="/Users/$USER/Library/Application Support/Alfred 2/Alfred.alfredpreferences/workflows"
DEFAULT_SETTING_PATH="/Users/$USER/Library/Application Support/Alfred 2/Alfred.alfredpreferences/preferences/workflows/prefs.plist"

WORKFLOW_DIR_PREFIX="user.workflow."
INFO_PLIST="info.plist"

PLIST="/usr/libexec/PlistBuddy"
CMD="`basename $0`"

if ! alfred_path="`defaults read com.runningwithcrayons.Alfred-Preferences syncfolder 2>/dev/null`" ; then
    WORKFLOW_PATH="$DEFAULT_WORKFLOW_PATH"
    DEFAULT_SETTING="$DEFAULT_SETTING_PATH"
else
    WORKFLOW_PATH="`eval echo ${alfred_path}`/Alfred.alfredpreferences/workflows"
    DEFAULT_SETTING="`eval echo ${alfred_path}`/Alfred.alfredpreferences/preferences/workflows/prefs.plist"
fi
