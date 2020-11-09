# macOS Essential Applications & Settings



Here is my macOS auto install script. It works on my macOS 10.15

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
```
[Install essential package manager & dependency tools](essential.sh)

## Install CLI Applications

```
brew install \
mackup \
mobile-shell \
mtr \
nmap \
pyenv \
go \
glide \
tmux \
youtube-dl \
git \
tree \
autoconf \
automake \
node \
openssl \
byobu \
ffmpeg \
hugo \
mas
```
[Install CLI Applications](cli.sh)


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
spotify \
appcleaner \
coderunner \
handbrake \
coconutbattery \
caprine \
transmit \
betterzip \
webpquicklook \
suspicious-package \
divvy \
mcbopomofo \
vlc
```
[Install GUI Applications without password](gui.sh)


## Install GUI Applications

#### This area need to typing password manually and change system preferences

```
brew cask install \
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

[Install GUI Applications](gui_pwd.sh)

## Install MAS Applications

#### Sign into the Mac App Store GUI app manually First!

```
mas install APP_ID
```

My Favorite Applications

| APP_ID   | Name                                |
| :------- | :---------------------------------- |
|638161122 |YubiKey Personalization Tool (3.1.24)|
|425264550 |Blackmagic Disk Speed Test (3.2)     |
|539883307 |LINE (5.14.0)                        |
|1480068668 |Messenger (63.3.112)                |
|409183694 |Keynote (8.3)                        |
|419330170 |Moom (3.2.14)                        |
|747648890 |Telegram (4.9.9)                     |
|425424353 |The Unarchiver (4.1.0)               |
|407963104 |Pixelmator (3.8.1)                   |
|409203825 |Numbers (5.3                         |
|497799835 |Xcode (10.1)                         |
|409201541 |Pages (7.3)                          |
|1037126344 |Apple Configurator 2 (2.7.1)        |
|1295203466 |Microsoft Remote Desktop (10.2.9)   |
|803453959  |Slack (3.3.8)                       |
|1055511498 |Day One (3.0.1)                     |

[Install MAS Applications](mas.sh)

## System Settings

```
# Set a shorter Delay until key repeat		
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2

# Disable window animations ("new window" scale effect)
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# Set default Finder location to home folder (~/)
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true && \
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true && \
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true && \
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Show absolute path in finder's title bar. 
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# Show build duration for Xcode
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES
```
[System Settings](system_settings.sh)

## Others

#### Install oh-my-zsh (typing password manually)

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i -e 's/robbyrussell/agnoster/g' ~/.zshrc
rm ~/.zshrc-e
```

[Install oh-my-zsh](ohzsh.sh)

#### Install Fonts

```
brew tap homebrew/cask-fonts

brew cask install \
font-anonymous-pro \
font-fira-code \
font-hack \
font-source-code-pro \
font-source-han-sans \
font-source-han-serif \
font-menlo-for-powerline
```

[Install Fonts](fonts.sh)

## Setup Hostname (Be sure to change hostname to yours)

```
sudo scutil --set HostName emp
```

## Enable Touch ID for sudo Authentication in Terminal

```
sudo sed -i ".bak" '2s/^/auth       sufficient     pam_tid.so\'$'\n/g' /etc/pam.d/sudo
```

Workaround for iTerm2: Turn off `Prefs > Advanced > Allow sessions to survive logging out and back in`


## Block & Re-Enable updates to macOS Catalina 10.15

```
# For Block
sudo softwareupdate --ignore "macOS Catalina"
```
```
# Remove Update Notification
defaults delete com.apple.preferences.softwareupdate LatestMajorOSSeenByUserBundleIdentifier && softwareupdate --list
```

```
# For Re-Enable
sudo softwareupdate --reset-ignored
```

## Disable Gatekeeper in macOS Sierra or later

⚠️⚠️⚠️ Proceed at your own risk ⚠️⚠️⚠️
```
sudo spctl --master-disable
```

## Restart Touchbar Service

```
sudo pkill TouchBarServer
```


## Manually Install

* [iPhone Backup Extractor](https://www.iphonebackupextractor.com/)
* [GPG Suite](https://gpgtools.org/)
