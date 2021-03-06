
#INDEX

curl --include --request GET http://localhost:4741/parties \
  --header "Authorization: Token token=BAhJIiVlY2ZiYTRiODQyNWE5ZDQ0MTFmMjU3Y2VlZjMwZDlmMAY6BkVG--9fe714cfd4465ee743827b37930a91d7f40c95e9" \


#SHOW

curl --include --request GET http://localhost:4741/parties/1 \
  --header "Authorization: Token token=BAhJIiUxZjI5YjI2MTA5OTQ5NDA3ZmVlMzM1ZGFlMTNmMmQyZAY6BkVG--c81411672392aff723ed2119137396e3fdf42f74" \


#CREATE

curl --include --request POST http://localhost:4741/parties \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUyY2IwNzQ4OGMxMmFkOTY2ZDg3NDE3MmZkYzNiZDY0ZQY6BkVG--8efa587bac2ec57093a4c278e11d034cc2168b84" \
  --data '{
    "party": {
      "name": "Christmas Party",
      "date": "20161215"
    }
  }'

  curl --include --request POST http://localhost:4741/parties \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiU4ODcwODdmZTA3ZTY3NDBhNzE3ZDcyNmZmZWFiMTUxYgY6BkVG--e05dc6e7eddf67d07700346b3839b9028cb083ef" \
    --data '{
      "party": {
        "name": "Picnic",
        "date": "20170530"
      }
    }'

  #UPDATE

  curl --include --request PATCH http://localhost:4741/parties/1 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiVjZjVlM2U5OWJmMzYxYWY4MWFiNTg5YzRlNDU3M2FmNwY6BkVG--35cd0366e625c6b7545f34190394e6385457e796" \
    --data '{
      "party": {
        "name": "Christmas Party",
        "date": "20161215"
      }
    }'


#DELETE

curl --include --request DELETE http://localhost:4741/parties/5 \
  --header "Authorization: Token token=BAhJIiU4ODcwODdmZTA3ZTY3NDBhNzE3ZDcyNmZmZWFiMTUxYgY6BkVG--e05dc6e7eddf67d07700346b3839b9028cb083ef" \
