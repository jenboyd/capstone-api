
#INDEX

curl --include --request GET http://localhost:4741/lists \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#SHOW

curl --include --request GET http://localhost:4741/lists/4 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#CREATE

curl --include --request POST http://localhost:4741/lists \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUwODAzMGVjODEyYWNiZDk4ZDU1MDg5ODAzNGYyMmNjZgY6BkVG--61f7d9eedaaaddaa22aa33fe6e89003752a574c1" \
  --data '{
    "list": {
      "name": "Apps",
      "party_id": 2

    }
  }'

  curl --include --request POST http://localhost:4741/lists \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUwODAzMGVjODEyYWNiZDk4ZDU1MDg5ODAzNGYyMmNjZgY6BkVG--61f7d9eedaaaddaa22aa33fe6e89003752a574c1" \
    --data '{
      "list": {
        "name": "Dessert",
        "party_id": 1
      }
    }'

  #UPDATE

  curl --include --request PATCH http://localhost:4741/lists/1 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \
    --data '{
      "list": {
        "name": "Main Course",
        "party_id": 3

      }
    }'


#DELETE

curl --include --request DELETE http://localhost:4741/lists/3 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \
