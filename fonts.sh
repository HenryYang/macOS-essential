#!/bin/bash

# Install Font Awesome
wget https://use.fontawesome.com/releases/v5.0.6/fontawesome-free-5.0.6.zip -O ~/Downloads/fontawesome-free-5.0.6.zip
unzip ~/Downloads/fontawesome-free-5.0.6.zip -d ~/Downloads/
cp ~/Downloads/fontawesome-free-5.0.6/use-on-desktop/Font\ Awesome\ 5\ Brands-Regular-400.otf ~/Library/Fonts
cp ~/Downloads/fontawesome-free-5.0.6/use-on-desktop/Font\ Awesome\ 5\ Free-Regular-400.otf ~/Library/Fonts
cp ~/Downloads/fontawesome-free-5.0.6/use-on-desktop/Font\ Awesome\ 5\ Free-Solid-900.otf ~/Library/Fonts
rm -R ~/Downloads/fontawesome-free-5.0.6/
rm ~/Downloads/fontawesome-free-5.0.6.zip

# Install NotoSerifCJKtc
wget https://noto-website.storage.googleapis.com/pkgs/NotoSerifCJKtc-hinted.zip -O ~/Downloads/NotoSerifCJKtc-hinted.zip
unzip ~/Downloads/NotoSerifCJKtc-hinted.zip -d ~/Downloads/NotoSerifCJKtc-hinted
cp ~/Downloads/NotoSerifCJKtc-hinted/NotoSerifCJKtc-Regular.otf ~/Library/Fonts
cp ~/Downloads/NotoSerifCJKtc-hinted/NotoSerifCJKtc-Bold.otf ~/Library/Fonts
cp ~/Downloads/NotoSerifCJKtc-hinted/NotoSerifCJKtc-Light.otf ~/Library/Fonts
rm -R ~/Downloads/NotoSerifCJKtc-hinted/
rm ~/Downloads/NotoSerifCJKtc-hinted.zip

# Install NotoSansCJKtc
wget https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKtc-hinted.zip -O ~/Downloads/NotoSansCJKtc-hinted.zip
unzip ~/Downloads/NotoSansCJKtc-hinted.zip -d ~/Downloads/NotoSansCJKtc-hinted
cp ~/Downloads/NotoSansCJKtc-hinted/NotoSansCJKtc-Regular.otf ~/Library/Fonts
cp ~/Downloads/NotoSansCJKtc-hinted/NotoSansCJKtc-Bold.otf ~/Library/Fonts
cp ~/Downloads/NotoSansCJKtc-hinted/NotoSansCJKtc-Light.otf ~/Library/Fonts
rm -R ~/Downloads/NotoSansCJKtc-hinted/
rm ~/Downloads/NotoSansCJKtc-hinted.zip

# Install Menlo Regular for Powerline font
wget https://raw.githubusercontent.com/supermarin/powerline-fonts/master/Menlo/Menlo%20Regular%20for%20Powerline.otf -O ~/Downloads/Menlo\ Regular\ for\ Powerline.otf
mv ~/Downloads/Menlo\ Regular\ for\ Powerline.otf ~/Library/Fonts
