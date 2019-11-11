#!/bin/bash

for file in scripts/*; do
	[ -f "$file" ] && [ -x "$file" ] && "$file"
done

echo "Post install complete"
echo
echo "Please reboot the computer now."
