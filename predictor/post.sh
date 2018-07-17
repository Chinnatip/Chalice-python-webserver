#export URL='http://localhost:8000'
#export URL='https://er59oai09i.execute-api.us-west-2.amazonaws.com/api/'
export URL=`chalice url`

export PIC='floppy.jpg'

# echo -n '{"data": "'; base64 $PIC; echo '", "topk": 1}'

# (echo -n '{"data": "'; base64 $PIC; echo '", "topk": 1}') |
# curl -H "Content-Type: application/json" -d @-  $URL

# echo

# (echo -n '{"data": "'; base64 $PIC; echo '", "topk": 3}') |
# curl -H "Content-Type: application/json" -d @-  $URL

echo

(echo -n '{"data": "'; base64 $PIC; echo '"}') |
curl -H "Content-Type: application/json" -d @-  $URL
