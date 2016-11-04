
#INDEX

curl --include --request GET http://localhost:4741/parties \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#SHOW

curl --include --request GET http://localhost:4741/parties/1 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#CREATE

curl --include --request POST http://localhost:4741/parties \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \
  --data '{
    "party": {
      "name": "Christmas Party",
      "date": "20161215"
    }
  }'

  curl --include --request POST http://localhost:4741/parties \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \
    --data '{
      "party": {
        "name": "Brunch",
        "date": "20161110"
      }
    }'

  #UPDATE

  curl --include --request PATCH http://localhost:4741/parties/1 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \
    --data '{
      "party": {
        "name": "Christmas Party",
        "date": "20161215"
      }
    }'


#DELETE

curl --include --request DELETE http://localhost:4741/parties/1 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \
