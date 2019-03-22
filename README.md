# macOS Essential Applications & Settings



Here is my macOS auto install script. It works on my macOS 10.14

⚠️⚠️⚠️ 

Base on personal experience, author isn't responsible for any data lost or damage, proceed at your own risk.

⚠️⚠️⚠️


## Install essential package manager & dependency tools

#### This action need to typing password manually
  
```
# Install homebrew & Xcode Command Line Tools
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Turn off analytics
brew analytics off


# Install brew cask
brew cask
brew tap caskroom/versions
```

## Install CLI Applications

```
brew install \
zsh \
mackup \
mobile-shell \
mtr \
nmap \
pyenv \
go \
tmux \
youtube-dl \
git \
tree \
autoconf \
automake \
node \
openssl \
mas
```



## Install GUI Applications without password

```
brew cask install \
alfred \
dropbox \
bartender \
fantastical \
typinator \
google-chrome \
firefox \
iterm2 \
evernote \
spotify \
appcleaner \
battery-time-remaining \
coderunner \
handbrake \
iphone-backup-extractor \
macdown \
coconutbattery \
transmit
```

## Install GUI Applications

#### This area need to typing password manually and change system preferences

```
brew cask install \
java8 \
shimo \
vmware-fusion \
splashtop-personal \
splashtop-streamer \
istat-menus \
pacifist \
onyx \
paragon-vmdk-mounter \
wireshark \
hex-fiend \
visual-studio-code \
imazing
```
