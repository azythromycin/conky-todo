#!/bin/bash

set -e

SCRIPT_NAME="todolist.py"
INSTALL_DIR="$HOME/.config/conky"
TARGET_BIN="$HOME/.local/bin/todolist"

echo "Installing todolist..."

# Step 1: Ensure install directories exist
mkdir -p "$INSTALL_DIR"
mkdir -p "$HOME/.local/bin"

# Step 2: Move the script
cp "$SCRIPT_NAME" "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

# Step 3: Create symlink in ~/.local/bin
ln -sf "$INSTALL_DIR/$SCRIPT_NAME" "$TARGET_BIN"
chmod +x "$TARGET_BIN"

# Step 4: Add ~/.local/bin to PATH if it's not already there
if ! echo "$PATH" | grep -q "$HOME/.local/bin"; then
    SHELL_RC="$HOME/.bashrc"
    if [ -n "$ZSH_VERSION" ]; then
        SHELL_RC="$HOME/.zshrc"
    fi
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$SHELL_RC"
    echo "~/.local/bin was added to your PATH. Restart your terminal or run: source $SHELL_RC"
fi

echo "Installation complete. You can now use the 'todolist' command."

