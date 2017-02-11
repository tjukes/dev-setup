# Copy all config files - git bashrc zsh

# Install redshift
sudo apt-get install redshift
# Redshift config file is not auto-generated -- good idea to keep the one I already have (copy from 'real' backup in this repo):
curl https://raw.githubusercontent.com/tjukes/dev-setup/master/real/.config/redshift.conf?token=AM-_iAq1oaaz9EbO7K7B31NvLp-I4A0Pks5Yp7X1wA%3D%3D > ~/.config/redshift.conf

# Atom
# FIRST - download .deb from https://atom.io/
# THEN
# Installation commands copied from Atom website:
sudo dpkg -i atom-amd64.deb
# Install Atom's dependencies if they are missing (command from website):
sudo apt-get -f install

# Set up Heroku


# Install Ruby, make sure have access to gem install
# Ruby version manager (rvm or?)

# RBENV PROCESS, from https://github.com/rbenv/rbenv
mkdir ~/.rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# Add to '$PATH' - note this line assumes zsh setup; if not, instead modify ~/.bash_profile or ~/.bashrc 
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
# Then get shell-specific instructions for initializing rbenv
~/.rbenv/bin/rbenv init
# With current setup, the next command was
# echo 'eval "$(rbenv init -)"' >> ~/.zshrc
# RESTART SHELL - close & re-open, or new tab
# Check that rbenv is a function
type rbenv
# To update, run 'git pull' from rbenv directory

# Then install ruby-build to make it easy to install other versions of Ruby
# Instructions from https://github.com/rbenv/ruby-build#readme
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
# To update, run 'git pull' from directory

# Then install latest version of Ruby (currently 2.4.0, check this before running)
rbenv install 2.4.0
# and set it as the globally preferred version
rbenv global 2.4.0
# and install new shims -- necessary after installing new Ruby version or gem that provides commands
rbenv rehash


# Then install useful gems
# Important ones first, for functionality
gem install bundler

gem install gist
gem install tux


# Install useful programs
# MAKE EACH ONE OPTIONAL?
# slack
# ARandR
# inkscape
# skype
