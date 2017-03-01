#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/orders"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "order":{
      "expiration_date":"'"${EXPIRATION_DATE}"'",
      "amount":"'"${AMOUNT}"'",
      "order_date": "'"${ORDER_DATE}"'",
      "product_id": "'"${PRODUCT_ID}"'"
    }

  }'

echo
