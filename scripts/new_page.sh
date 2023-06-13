#! /bin/bash

echo "\nEnter Page name:\n"
read PAGE

# capitalizing first letter
TITLE=`echo $PAGE | ruby -e 'puts ARGF.read.capitalize'`

echo "---
permalink: /$PAGE/
title: $TITLE
---\n\n" >> $PAGE.md


echo "\nPage $PAGE created!"