# ruby-for-beginners

## Extension for visual studio code
1. Ruby language colorization
2. ruby-rubocop (it's necessary run install to work. Run ```gem install rubocop```)
3. Snippets and Syntax Highlight for Gherkin (Cucumber)

## Setup 
### Windows
On windows is important use C://

To use capybara it's necessary have ruby installed. So, access https://rubyinstaller.org/downloads/ and install the option with Devkit. On the end it's important uncheck the option to run 'ridk install'.

To check with ruby is installed run:
```ruby --version```

After install run:
```ridk install```
First selection: Select the option 3.
Second selection: Press enter.

Install bundler
```gem install bundler```
```gem env```

### Ubuntu, Mint or Debian - Linux
Libs de DevKit
```
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
```

#### ZSH (Installed Oh My ZSH)
```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.zshrc

source ~/.zshrc

rbenv install 2.6.1
rbenv global 2.6.1

source ~/.zshrc
```

#### Bash (not installed Oh My ZSH)
```
sudo apt-get install git
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

source ~/.bashrc

rbenv install 2.6.1
rbenv global 2.6.1

source ~/.bashrc
```

Install bundler
```gem install bundler```


### Fedora, CentOS - Redhat
Libs de DevKit
```sudo dnf install git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel```

#### ZSH (Installed Oh My ZSH)
```
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

source ~/.zshrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.zshrc

source ~/.zshrc

rbenv install 2.6.1
rbenv global 2.6.1

source ~/.zshrc
```

#### Bash (not installed Oh My ZSH)
```
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.6.1
rbenv global 2.6.1
```


Install bundler
```gem install bundler```


#### MacOS
Install Homebrew
```ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```

Install ruby
```brew install rbenv ruby-build```
```echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile```
```source ~/.bash_profile```
```
rbenv install 2.4.3
rbenv global 2.4.3
ruby -v
```

Install bundler
```gem install bundler```

## Run test
```ruby filename.rb```