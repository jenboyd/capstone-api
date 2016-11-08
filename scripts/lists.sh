
#INDEX

curl --include --request GET http://localhost:4741/lists \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#SHOW

curl --include --request GET http://localhost:4741/lists/4 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#CREATE

curl --include --request POST http://localhost:4741/lists \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU4ODcwODdmZTA3ZTY3NDBhNzE3ZDcyNmZmZWFiMTUxYgY6BkVG--e05dc6e7eddf67d07700346b3839b9028cb083ef" \
  --data '{
    "list": {
      "name": "Dessert",
      "party_id": 1

    }
  }'

  curl --include --request POST http://localhost:4741/lists \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiU4ODcwODdmZTA3ZTY3NDBhNzE3ZDcyNmZmZWFiMTUxYgY6BkVG--e05dc6e7eddf67d07700346b3839b9028cb083ef" \
    --data '{
      "list": {
        "name": "Lunch",
        "party_id": 6
      }
    }'

  #UPDATE

  curl --include --request PATCH http://localhost:4741/lists/1 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \
    --data '{
      "list": {
        "name": "Lunch",
        "party_id": 6

      }
    }'


#DELETE

curl --include --request DELETE http://localhost:4741/lists/1 \
  --header "Authorization: Token token=BAhJIiU4ODcwODdmZTA3ZTY3NDBhNzE3ZDcyNmZmZWFiMTUxYgY6BkVG--e05dc6e7eddf67d07700346b3839b9028cb083ef" \
