#! /bin/bash

# Install script for script_maker

# check if $1 has value "overwrite"
if [ "$1" == "overwrite" ]; then
    echo "Overwriting script_maker..."
    rm -rf $HOME/scripts/script_maker
fi

# Check if script_maker is already installed
if [ -f "$HOME/scripts/script_maker" ]; then
    echo "script_maker is already installed"
    exit 1
fi

# Install script_maker

echo "Installing script_maker..."

mkdir -p $HOME/scripts
cp ./script_maker $HOME/scripts/script_maker
chmod +x $HOME/scripts/script_maker

# Add script_maker to PATH

# don't add to PATH if it's already there
if [[ ":$PATH:" == *":$HOME/scripts:"* ]]; then
    echo "script_maker is already in PATH"
else
    echo "Adding script_maker to PATH..."
    if [ -f "$HOME/.zshrc" ]; then
        echo "export PATH=\$PATH:\$HOME/scripts" >> $HOME/.zshrc
    elif [ -f "$HOME/.bashrc" ]; then
        echo "export PATH=\$PATH:\$HOME/scripts" >> $HOME/.bashrc
    else
        echo "Could not find .bashrc or .zshrc"
        exit 1
    fi
fi

echo "script_maker installed successfully"
echo "Please restart your terminal to use script_maker"
