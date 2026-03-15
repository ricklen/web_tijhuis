#######
# Git #
#######
echo "=== Git Section ==="
echo "user.name: $GIT_NAME"
echo "user.email: $GIT_EMAIL"
git config --global --add safe.directory /workspaces/*
git config --global core.eol lf
git config --global core.autocrlf input
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global credential.useHttpPath true

