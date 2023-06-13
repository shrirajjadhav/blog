#! /bin/bash

DATE=$(date '+%Y-%m-%d')

echo "\nEnter Title for the post:\n"
read TITLE

POST_TITLE=$(echo $TITLE | tr " " "-")
# echo $POST_TITLE

echo "\nEnter category:\n"
read CATEGORY

echo "Enter tag(s):"
read TAGS

echo "---
category: $CATEGORY
tags: $TAGS
---" >> _posts/$DATE-$POST_TITLE.md


# touch _posts/$DATE-$POST_TITLE.md

echo "Post created!"