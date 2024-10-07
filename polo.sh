#!/home/umermushtaq/anaconda3/bin/sh

if [ -n "$1" ]; then
    cd "$1" || echo "Directory no longer exists."
else
    echo "No directory saved. Run 'marco' first."
fi

