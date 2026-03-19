#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/ssd"
  exit 1
fi

rsync -av --delete ./data/ "$1/vaultwarden-backup/"
echo "Backup completed: $(date)"