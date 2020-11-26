#!/usr/bin/bash

yay -Sl | \
awk '{print $2($4=="" ? "" : " *")}'| \
fzf -e -m --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | awk "{print \$2}")' --layout=reverse | \
xargs -ro -n1 yay -Sy