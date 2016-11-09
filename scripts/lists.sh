
#INDEX

curl --include --request GET http://localhost:4741/lists \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#SHOW

curl --include --request GET http://localhost:4741/lists/4 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#CREATE

curl --include --request POST http://localhost:4741/lists \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU3MzdjOWU4OTcwMjA3MzYzYTJiYjhmMjhhNDY3Y2FlMgY6BkVG--b39fe215b0397292d3ef4e5253480808150de267" \
  --data '{
    "list": {
      "name": "Dessert",
      "party_id": 11

    }
  }'

  curl --include --request POST http://localhost:4741/lists \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiU3YmFlN2NmYThiOGNjM2FhMzYzODNmN2FjZTc1NWI1NAY6BkVG--a0061a5dea63d1d9ba36c214e99eead7adfbbb8d" \
    --data '{
      "list": {
        "name": "Lunch",
        "party_id": 37
      }
    }'

  #UPDATE

  curl --include --request PATCH http://localhost:4741/lists/18 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiU3MzdjOWU4OTcwMjA3MzYzYTJiYjhmMjhhNDY3Y2FlMgY6BkVG--b39fe215b0397292d3ef4e5253480808150de267" \
    --data '{
      "list": {
        "name": "Lunch"

      }
    }'


#DELETE

curl --include --request DELETE http://localhost:4741/lists/21 \
  --header "Authorization: Token token=BAhJIiU3MzdjOWU4OTcwMjA3MzYzYTJiYjhmMjhhNDY3Y2FlMgY6BkVG--b39fe215b0397292d3ef4e5253480808150de267" \
