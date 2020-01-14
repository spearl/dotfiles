#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Install zsh
brew install zsh

# Install `wget` with IRI support.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install nvim
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp
brew install gawk
brew install jemalloc

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install Languages
brew install rbenv
brew install python
brew install elixir
brew install clojure
brew install gnu-smalltalk
brew install go
brew install yaegi
brew install protobuf
brew tap dart-lang/dart
brew install dart

# Install other useful binaries.
brew install bat
brew install cowsay
brew install lolcat
brew install jq
brew install exa
brew install graphviz
brew install ripgrep
brew install fzf
brew install git
brew install git-lfs
brew install gnu-typist
brew install hub
brew install imagemagick
brew install lazydocker
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install postgres
brew install pv
brew install ssh-copy-id
brew install tldr
brew install tree
brew install youtube-dl
brew install zopfli

# Install casks
brew cask install emacs
brew cask install qlstephen
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlimagesize

# Remove outdated versions from the cellar.
brew cleanup
