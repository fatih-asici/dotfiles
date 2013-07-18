#!/bin/bash

# Enable colored prompt.
sed -i -E 's/^#(force_color_prompt=yes)$/\1/' $HOME/.bashrc
