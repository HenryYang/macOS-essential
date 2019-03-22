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
transmit \
qlcolorcode \
qlstephen \
qlmarkdown \
quicklook-json \
betterzip \
qlimagesize \
webpquicklook \
suspicious-package \
quicklookase
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
imazing \
qlvideo
```

## Install MAS Applications

```
mas install APP_ID
```

My Favorite Applications

| APP_ID   | Name                                |
| :------- | :---------------------------------- |
|638161122 |YubiKey Personalization Tool (3.1.24)|
|425264550 |Blackmagic Disk Speed Test (3.2)     |
|539883307 |LINE (5.14.0)                        |
|406056744 |Evernote (7.9)                       |
|409183694 |Keynote (8.3)                        |
|419330170 |Moom (3.2.14)                        |
|747648890 |Telegram (4.9.9)                     |
|425424353 |The Unarchiver (4.1.0)               |
|407963104 |Pixelmator (3.8.1)                   |
|409203825 |Numbers (5.3                         |
|497799835 |Xcode (10.1)                         |
|409201541 |Pages (7.3)                          |
|490463474 |Capster (3.0)                        |
|588726889 |ReadKit (2.6.1)                      |
|1037126344 |Apple Configurator 2 (2.7.1)        |
|1295203466 |Microsoft Remote Desktop (10.2.9)   |
|803453959  |Slack (3.3.8)                       |
|1055511498 |Day One (3.0.1)                     |
