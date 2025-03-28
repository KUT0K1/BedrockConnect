#!/bin/sh

# Set default value for nodb if it not set
NODB=${nodb:-true}
PARAMS="nodb=$NODB"

# Add additional parameters only if they are set
[ -n "$USER_SERVERS" ] && PARAMS="${PARAMS} user_servers=${USER_SERVERS}"
[ -n "$FEATURED_SERVERS" ] && PARAMS="${PARAMS} featured_servers=${FEATURED_SERVERS}"
[ -n "$CUSTOM_SERVERS" ] && PARAMS="${PARAMS} custom_servers=${CUSTOM_SERVERS}"

# If CMD arguments were passed, add them to PARAMS
if [ "$#" -gt 0 ]; then
  PARAMS="$PARAMS $@"
fi

# Start the application with the dynamic parameters
exec java -jar BedrockConnect-1.0-SNAPSHOT.jar $PARAMS
