#!/usr/bin/env bash
# This script generates all config files and creates a default save

mkdir -p $(dirname "$CONFIG")
mkdir -p /srv/factorio/mods

if [ ! -f "$CONFIG" ]; then echo "Copying server config..."; cp ./data/server-settings.example.json "$CONFIG"; fi
if [ ! -f "$WHITELIST" ]; then echo "Creating whitelist..."; echo "[]" > "$WHITELIST"; fi
if [ ! -f "$BANLIST" ]; then echo "Creating blacklist..."; echo "[]" > "$BANLIST"; fi

if [ ! -f "./saves/default.zip" ]; then echo "Creating default save..."; "$SERVER" --create ./saves/default.zip; fi
