#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "\n${WHITE}==============================================================================

Welcome to Upstatement! Setting up your computer...

==============================================================================${NORMAL}\n"

# Install XCode Command Line Tools
printf "\n${BLUE}Installing XCode Command Line Tools...${NORMAL}\n"
eval "xcode-select --install"

# Install Homebrew for easier macOS package management
printf "\n${YELLOW}Installing Homebrew..${NORMAL}\n"
eval "/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'"

# Install NVM for easier Node.js version management
printf "\n${GREEN}Installing NVM for easier Node.js version management...${NORMAL}\n"
eval "curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
. ~/.bashrc"
eval "nvm install node --lts"
eval "nvm alias default node"

# Install Yarn for easier (and faster) Node.js dependency management
printf "\n${BLUE}Installing Yarn for easier (and faster) Node.js dependency management...${NORMAL}\n"
eval "brew install yarn --without-node"

# Install Composer for easier PHP dependency management
printf "\n${MAGENTA}Installing Composer for easier PHP dependency management...${NORMAL}\n"
eval "brew install composer"

# Add the gulp-cli, bower, yo, and puppy NPM packages globally
printf "\n${GREEN}Installing global npm packages for gulp, bower, yeoman, and puppy...${NORMAL}\n"
eval "npm install -g gulp-cli bower yo upstatement/generator-puppy"

# Follow the instructions on GitHub to generate a new SSH key and add it to your Github account.
printf "\n${WHITE}==============================================================================

${GREEN}All set!

${WHITE}Lastly, make sure to follow the instructions in the links below to generate a new SSH key and then add the key to your GitHub account.

${YELLOW}https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key

${YELLOW}https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account

${WHITE}Opening links above now...

==============================================================================${NORMAL}\n"

eval "open https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key"
eval "open https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account"
