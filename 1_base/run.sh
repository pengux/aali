#!/bin/bash

for file in scripts/*; do
    [ -f "$file" ] && [ -x "$file" ] && "$file"
done

echo "If no errors occured during unmount, you can reboot and login as normal user."
