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
# Install zsh
brew install bash bash-completion2 zsh

# Install `wget` with IRI support.
# Install GnuPG to enable PGP-signing commits.
brew install wget gnupg

# Install more recent versions of some macOS tools.
brew install vim nvim grep openssh screen php gmp gawk jemalloc

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff sfnt2woff-zopfli woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng bfg binutils binwalk cifer dex2jar dns2tcp fcrackzip foremost hashpump hydra john knock netpbm nmap pngcheck socat sqlmap tcpflow tcpreplay tcptrace ucspi-tcp xpdf xz

# Install Languages
brew install rbenv python elixir clojure ghc gnu-smalltalk go yaegi protobuf
brew tap dart-lang/dart
brew install dart
brew install watchman

# Install other useful binaries.
brew install bat cowsay lolcat jq exa graphviz ripgrep fzf git git-lfs gnu-typist hub imagemagick lazydocker lua lynx p7zip pigz postgres pv ssh-copy-id tldr tree youtube-dl zopfli

# Install casks
brew install --cask emacs adoptopenjdk qlstephen qlcolorcode qlmarkdown quicklook-json qlimagesize

# Remove outdated versions from the cellar.
brew cleanup
