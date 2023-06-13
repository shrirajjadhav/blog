
#! /bin/bash

if [ -f Gemfile ];
then 
    echo "\nJekyll is already setup. \nServe it with run.sh"
else
    echo "No jekyll project found. \nInitialize it..."
    jekyll new . --force
    echo "\n jekyll setup completed \nRun with run.sh"
fi

cp _config _samples/
cp _samples/custom_config.yml _config
cp about.* _samples/page.md
cp _posts/*.* _samples/post.md

echo "\n
{% assign psize = site.posts | size %}
{% if psize == 0 %} 
  <p>No posts...yet.</p>
{% endif %}
" >> index.markdown


