#!/bin/bash

for file in scripts/*; do
    [ -f "$file" ] && [ -x "$file" ] && "$file"
done

echo "Configurations Completed"
echo
echo "Press Ctrl+D to exit from chroot"
echo
