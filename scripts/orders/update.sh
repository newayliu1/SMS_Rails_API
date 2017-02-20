#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/orders/"
curl "${API}${URL_PATH}${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "order":{
      "amount":"'"${AMOUNT}"'",
      "order_date":"'"${ORDER_DATE}"'"

    }

  }'

echo
