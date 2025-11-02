#!/bin/bash
set -v
set -x
BROADCASTER_ID=""
CLIENT_ID=""
TOKEN=""
curl -X PATCH 'https://api.twitch.tv/helix/channels?broadcaster_id='${BROADCASTER_ID}'' -H 'Authorization: Bearer '${TOKEN}'' -H 'Client-Id:'${CLIENT_ID}'' -H 'Content-Type:application/json' --data-raw '{"title":"TITLE"}'