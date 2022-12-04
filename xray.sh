#!/bin/sh
if [ ! -f UUID ]; then
  UUID="94f8ffb3-6287-4f5a-997a-2a91de7f5b92"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

