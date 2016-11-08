#INDEX

curl --include --request GET http://localhost:4741/item_instances \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#SHOW

curl --include --request GET http://localhost:4741/item_instances/1 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#CREATE

curl --include --request POST http://localhost:4741/item_instances \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU1MGViNmY0ZGExZGRmNDNhOTYxN2NhYjA0ODNmMWMwYwY6BkVG--7252e7297fee48842ca292331d97202662086260" \
  --data '{
    "item_instance": {
      "item_id": 1,
      "list_id": 4

    }
  }'

  curl --include --request POST http://localhost:4741/item_instances \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUwODAzMGVjODEyYWNiZDk4ZDU1MDg5ODAzNGYyMmNjZgY6BkVG--61f7d9eedaaaddaa22aa33fe6e89003752a574c1" \
    --data '{
      "item_instance": {
        "item_id": 2,
        "list_id": 1

      }
    }'



  #UPDATE

  curl --include --request PATCH http://localhost:4741/item_instances/1 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUwODAzMGVjODEyYWNiZDk4ZDU1MDg5ODAzNGYyMmNjZgY6BkVG--61f7d9eedaaaddaa22aa33fe6e89003752a574c1" \
    --data '{
      "item_instance": {
        "item_id": 2,
        "list_id": 2

      }
    }'


#DELETE

curl --include --request DELETE http://localhost:4741/item_instances/1 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \
