#INDEX

curl --include --request GET http://localhost:4741/items \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#SHOW

curl --include --request GET http://localhost:4741/items/1 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#CREATE

curl --include --request POST http://localhost:4741/items \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUyY2IwNzQ4OGMxMmFkOTY2ZDg3NDE3MmZkYzNiZDY0ZQY6BkVG--8efa587bac2ec57093a4c278e11d034cc2168b84" \
  --data '{
    "item": {
      "content": "Dip",
      "list_id": 6

    }
  }'

  curl --include --request POST http://localhost:4741/items \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUwODAzMGVjODEyYWNiZDk4ZDU1MDg5ODAzNGYyMmNjZgY6BkVG--61f7d9eedaaaddaa22aa33fe6e89003752a574c1" \
    --data '{
      "item": {
        "content": "cheese board",
        "list_id": 6

      }
    }'

  #UPDATE

  curl --include --request PATCH http://localhost:4741/items/1 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \
    --data '{
      "item": {
        "content": "Queso Dip",
        "list_id": 6

      }
    }'


#DELETE

curl --include --request DELETE http://localhost:4741/items/1 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \
