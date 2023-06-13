
FROM  ubuntu:22.04

# ###############################
# updating apt repo
# ###############################
RUN apt-get update && apt update 

# ###############################
# Installing Ruby
# ###############################
RUN apt-get -y install ruby-full build-essential zlib1g-dev

# ###############################
# setting up Ruby env.
# ###############################
RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc \
    echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc \
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc \
    source ~/.bashrc

# ###############################
# Installing Jekyll
# ###############################
RUN gem install jekyll bundler



