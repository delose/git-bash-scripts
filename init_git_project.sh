#!/bin/bash

# Function to display usage
usage() {
  echo "Usage: $0 <project_name>"
  exit 1
}

# Check if the project name is provided
if [ -z "$1" ]; then
  echo "Error: No project name provided."
  usage
fi

# Set the project name
PROJECT_NAME=$1

# Create a directory for the project
if [ -d "$PROJECT_NAME" ]; then
  echo "Directory $PROJECT_NAME already exists."
else
  mkdir "$PROJECT_NAME"
  echo "Created directory: $PROJECT_NAME"
fi

# Navigate to the project directory
cd "$PROJECT_NAME" || exit

# Initialize a git repository
git init

# Create a README file
README="README.md"
if [ ! -f "$README" ]; then
  echo "# $PROJECT_NAME" > "$README"
  echo "Created $README"
else
  echo "$README already exists."
fi

# Create a .gitignore file (optional)
GITIGNORE=".gitignore"
if [ ! -f "$GITIGNORE" ]; then
  echo "# Ignore OS generated files" > "$GITIGNORE"
  echo ".DS_Store" >> "$GITIGNORE"
  echo "Created $GITIGNORE"
else
  echo "$GITIGNORE already exists."
fi

# Checkout main branch
git checkout -b main

# Add files to git
git add .

# Commit the initial files
git commit -m "Initial commit"

# Create a script to set up a remote repository
REMOTE_SCRIPT="setup_remote.sh"
if [ ! -f "$REMOTE_SCRIPT" ]; then
  cat <<EOL > $REMOTE_SCRIPT
#!/bin/bash

# Function to display usage
usage() {
  echo "Usage: \$0 <repository_url>"
  exit 1
}

# Check if the repository URL is provided
if [ -z "\$1" ]; then
  echo "Error: No repository URL provided."
  usage
fi

REPO_URL=\$1

# Set up the remote repository
git remote add origin \$REPO_URL
git push -u origin main

echo "Remote repository set up at \$REPO_URL"
EOL
  chmod +x $REMOTE_SCRIPT
  echo "Created $REMOTE_SCRIPT"
else
  echo "$REMOTE_SCRIPT already exists."
fi

# Print success message
echo "Initialized git repository in $PROJECT_NAME"
echo "You can now run ./$REMOTE_SCRIPT <repository_url> to set up a remote repository."


