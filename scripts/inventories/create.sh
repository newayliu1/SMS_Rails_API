#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/inventories"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "inventory":{
      "price":"'"${PRICE}"'",
      "section":"'"${SECTION}"'",
      "product_id": "'"${PRODUCT_ID}"'"
    }

  }'

echo
