# Install rvm and ruby
curl -sSL https://get.rvm.io | bash -s stable --ruby

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Setup .profile
echo 'export PATH=$PATH:/usr/local/bin' > $HOME/.profile
source ~/.profile

# Run brew setup
chmod +x ./brewfiles/brewfile.sh
./brewfiles/brewfile.sh

# Prettify Terminal
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerline themes
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Copy iTerm config
cp ./zshrc/.zshrc ~/.zshrc

git config core.ignorecase false
