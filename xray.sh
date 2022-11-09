#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ca1b9250-cc27-4103-9fa7-1da9ea4ab982"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

