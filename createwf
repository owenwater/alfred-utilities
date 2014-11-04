#!/bin/bash

INFO_PLIST="info.plist"
NEW_PLIST="new.plist"

WORKFLOW_PATH="/Users/$USER/Library/Application Support/Alfred 2/Alfred.alfredpreferences/workflows"
DEFAULT_SETTING="/Users/$USER/Library/Application Support/Alfred 2/Alfred.alfredpreferences/preferences/workflows/prefs.plist"
WORKFLOW_DIR_PREFIX="user.workflow."

PLIST="/usr/libexec/PlistBuddy"

get_default_value() {
    default_value="`$PLIST -c \"Print $1\" \"$DEFAULT_SETTING\" 2>/dev/null`"
}


#read default settings from prefs.plist
get_default_value 'defaultBundleId'
bundle_id_prefix="$default_value"

get_default_value 'defaultCreatedBy'
author="$default_value"

get_default_value 'defaultReadme'
readme="$default_value"

get_default_value 'defaultWebsite'
website="$default_value"

bundle_id="$bundle_id_prefix`echo $1 | tr '[:upper:]' '[:lower:]'`"
name="$1"


#create new info.plist
values=("$bundle_id" "$author" "$name" "$readme" "$website")
keys=("bundleid" "createdby" "name" "readme" "webaddress")

cp $INFO_PLIST $NEW_PLIST

for i in "${!values[@]}"; do
    $PLIST -c "Set ${keys[$i]} ${values[$i]}" $NEW_PLIST
done


#create workflow
dir="$WORKFLOW_PATH/$WORKFLOW_DIR_PREFIX$name"".`date +'%Y_%m_%d_%H_%M_%S'`"
mkdir "$dir"

mv "$NEW_PLIST" "$dir/$INFO_PLIST"

