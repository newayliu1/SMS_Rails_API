#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/inventories"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "inventory":{
      "price":"'"${PRICE}"'",
      "section":"'"${SECTION}"'"
    }

  }'

echo
