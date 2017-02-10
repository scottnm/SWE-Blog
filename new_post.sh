#!/usr/bin/env bash
if [ $# -eq 0 ]; then
    echo "Please provide post name as arguments"
    exit 1
fi

POSTS_DIR="_posts/"
DATE=$(date +%F)

POST_NAME=""
POST_FILE_NAME=""

for cmdarg in "$@"
do
    POST_NAME+=" "$cmdarg
    POST_FILE_NAME+="-"$cmdarg
done

POST_NAME=${POST_NAME:1}
POST_FILE_NAME=${POST_FILE_NAME:1}
POST_FILE_NAME="$POSTS_DIR$DATE-$POST_FILE_NAME.md"

echo $POST_NAME
echo $POST_FILE_NAME
