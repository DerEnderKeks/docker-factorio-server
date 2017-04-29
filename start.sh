#!/usr/bin/env sh

COMMAND="$SERVER --start-server-load-latest --server-settings $CONFIG --server-whitelist $WHITELIST --server-banlist $BANLIST"

if [ -n "$RCONPORT" ] && [ -n "$RCONPASSWORD" ]; then COMMAND="$COMMAND --rcon-port $RCONPORT --rcon-password $RCONPASSWORD"; fi;

sh -c "$COMMAND"
