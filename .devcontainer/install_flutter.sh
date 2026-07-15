git update-index --chmod=+x .devcontainer/install_flutter.sh
#!/bin/bash
set -e

# Install Flutter to a permanent location in the workspace
FLUTTER_DIR="$HOME/flutter"

if [ ! -d "$FLUTTER_DIR" ]; then
  echo "Installing Flutter..."
  git clone https://github.com/flutter/flutter.git -b stable $FLUTTER_DIR
else
  echo "Flutter already installed. Updating..."
  cd $FLUTTER_DIR && git pull
fi

# Add Flutter to PATH permanently
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.bashrc
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.zshrc

# Accept licenses and pre-cache
export PATH="$PATH:$HOME/flutter/bin"
flutter doctor
flutter precache
