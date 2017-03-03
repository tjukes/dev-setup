# SET UP SHELL
# Install zsh
sudo apt install zsh
# Confirm that zsh version is greater than 4.3.9
zsh --version
# Try to set zsh as default shell
chsh -s $(which zsh)
# Check to see if it worked
echo $SHELL
# If it didn't (quite possible), add this to the bottom of ~/.bashrc (including comment to explain)
  # Use zsh - command added here because regular setup didn't work
  zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Update config file manually for now - change theme to "sunrise"
# Let heroku etc update config automatically


# If OS install & setup didn't include firmware/codecs/etc with restricted licenses, install them now:
sudo apt-get install ubuntu-restricted-extras


# Read this to figure out how to make bootup smoother: https://mrchromebox.tech/#fwscript


# Install redshift
sudo apt-get install redshift
# Redshift config file is not auto-generated -- good idea to keep the one I already have (copy from 'real' backup in this repo):
curl https://raw.githubusercontent.com/tjukes/dev-setup/master/real/.config/redshift.conf?token=AM-_iAq1oaaz9EbO7K7B31NvLp-I4A0Pks5Yp7X1wA%3D%3D > ~/.config/redshift.conf



#Install Git
sudo apt-get install git
# Set up ~/.gitconfig and ~/.gitignore_global: copy files, make sure usernames etc are right



# Atom
# FIRST - download .deb from https://atom.io/
# THEN
# Installation commands copied from Atom website:
sudo dpkg -i atom-amd64.deb
# Install Atom's dependencies if they are missing (command from website):
sudo apt-get -f install

# Linters
apm install linter
# Javascript
apm install linter-jshint

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
# NOTE see below in case of error: "configure: error: no acceptable C compiler found in $PATH"
rbenv install 2.4.0
# and set it as the globally preferred version
rbenv global 2.4.0
# and install new shims -- necessary after installing new Ruby version or gem that provides commands
rbenv rehash

# Troubleshooting: in case of error "configure: error: no acceptable C compiler found in $PATH"
# Apparently Ubuntu doesn't come with a default C compiler, so run
sudo apt-get install build-essential
# Then try installing Ruby/Rubies again
# There may be errors... eg, had to run "sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev" to install missing dependencies

# Then install useful gems
# Important ones first, for functionality
gem install bundler

gem install gist
gem install tux


# Install NodeJS
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# Then (optionally?) update NPM to latest version
sudo npm install npm@latest -g

# Then install useful packages
npm install minimist   # For parsing CLI option strings


# Set up Heroku
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install heroku
# Verify installation by checking version
heroku --version
# Log in 
heroku login    # Enter email address and password at prompt


# Install useful programs
# MAKE EACH ONE OPTIONAL?
# slack
# ARandR
# inkscape
# skype
