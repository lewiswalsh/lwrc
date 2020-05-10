#!/bin/bash

LWRC_COUNT=$(grep ".lwrc" ~/.bashrc | wc -l)

if (( $LWRC_COUNT > 0 )); then
  echo "Source line already exists"
else
  echo "Adding 'source ~/.lwrc' to .bashrc"
  echo "source ~/lwrc/.lwrc" >> ~/.bashrc
  source ~/lwrc/.lwrc
fi
