#INDEX

curl --include --request GET http://localhost:4741/items \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#SHOW

curl --include --request GET http://localhost:4741/items/1 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#CREATE

curl --include --request POST http://localhost:4741/items \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU3MzdjOWU4OTcwMjA3MzYzYTJiYjhmMjhhNDY3Y2FlMgY6BkVG--b39fe215b0397292d3ef4e5253480808150de267" \
  --data '{
    "item": {
      "content": "DIPS",
      "list_id": 24

    }
  }'

  curl --include --request POST http://localhost:4741/items \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiU0ODI1ZmUyNDA5ZDk3NDMzNWNjZmMxMTQzYWZmYzU0ZAY6BkVG--8a0448843d28e11c571e5a3baee95170af70cbfc" \
    --data '{
      "item": {
        "content": "cheese board",
        "list_id": 23

      }
    }'

  #UPDATE

  curl --include --request PATCH http://localhost:4741/items/1 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiU0ODI1ZmUyNDA5ZDk3NDMzNWNjZmMxMTQzYWZmYzU0ZAY6BkVG--8a0448843d28e11c571e5a3baee95170af70cbfc" \
    --data '{
      "item": {
        "content": "Queso Dip",
        "list_id": 23

      }
    }'


#DELETE

curl --include --request DELETE http://localhost:4741/items/1 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \
