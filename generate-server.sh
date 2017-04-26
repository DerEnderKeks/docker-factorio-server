#!/usr/bin/env bash

mkdir -p $(dirname "$CONFIG")

cp ./data/server-settings.example.json "$CONFIG"
echo "[]" > "$WHITELIST"
echo "[]" > "$BANLIST"

"$SERVER" --create ./saves/default.zip
