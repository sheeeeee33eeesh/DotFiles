#!/usr/bin/env bash

cd $(find -type d -name DotFiles 2>/dev/null)

mv -fT ./nvim ~/.config/

mv -fT ./fish ~/.config/

mv -fT ./kitty ~/.config/

mv -fT ./i3 ~/.config/i3
