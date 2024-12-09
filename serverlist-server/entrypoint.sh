#!/bin/sh

PARAMS=""

# Set default value for nodb unless explicitly set to false
NODB=${nodb:-true}
if [ "$NODB" = "true" ]; then
  PARAMS="${PARAMS} nodb=true"
else
  PARAMS="${PARAMS} nodb=false"
fi

# Add additional parameters only if they are set
[ -n "$USER_SERVERS" ] && PARAMS="${PARAMS} user_servers=${USER_SERVERS}"
[ -n "$FEATURED_SERVERS" ] && PARAMS="${PARAMS} featured_servers=${FEATURED_SERVERS}"
[ -n "$CUSTOM_SERVERS" ] && PARAMS="${PARAMS} custom_servers=${CUSTOM_SERVERS}"

# Start the application with the dynamic parameters
exec java -jar BedrockConnect-1.0-SNAPSHOT.jar $PARAMS