#! /bin/bash

echo "\nEnter Category name:\n"
read CATEGORY

# capitalizing first letter
TITLE=`echo $CATEGORY | ruby -e 'puts ARGF.read.capitalize'`

echo "---
permalink: /$CATEGORY/
title: $TITLE
---\n\n" >> $CATEGORY.md

echo "
## List of all the $CATEGORY posts:

" >> $CATEGORY.md

echo "{% for category in site.categories.$CATEGORY %}
- [{{category.title}}]({{site.baseurl}}{{category.url}})
{% endfor %}" >> $CATEGORY.md

echo "\nCategory $CATEGORY created!"
