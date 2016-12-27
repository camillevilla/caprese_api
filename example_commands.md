example commands for local development:

# Pomodoros 
## Index:

`curl http://localhost:3000/pomodoros`

## Create:

`curl -H "Content-Type:application/json; charset=utf-8" -d '{"user_id":1, "description": "Posting from CURL"}' http://localhost:3000/pomodoros`

# Tags

## Create
`curl -H "Content-Type:application/json; charset=utf-8" -d '{"name":"Java"}' http://localhost:3000/tags`