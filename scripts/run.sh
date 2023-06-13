#! /bin/bash

if [ -f Gemfile ];
then 
    bundle exec jekyll serve --livereload --force-polling
else
    echo "No jekyll project found. \nInitialize it with init.sh"
fi