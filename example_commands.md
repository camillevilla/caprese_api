example commands for local development:
- [curl](#curl)
- [routes](#routes)


# CURL
## Pomodoros 
**Index:**

`curl http://localhost:3000/pomodoros`

**Create:**

`curl -H "Content-Type:application/json; charset=utf-8" -d '{"user_id":1, "description": "Posting from CURL"}' http://localhost:3000/pomodoros`

## Tags

**Create**

`curl -
 "Content-Type:application/json; charset=utf-8" -d '{"name":"Java"}' http://localhost:3000/tags`

## PomodoroTags
**Create**

`curl -
 "Content-Type:application/json; charset=utf-8" -d '{"pomodoro_id":1, "tag_id":1}' http://localhost:3000/pomodoro_tags`

# Routes

## Queries
**by user**

`http://localhost:3000/pomodoros?user_id=1`

## PomodoroTags
**by pomodoro**

`http://localhost:3000/pomodoro_tags?pomodoro_id=1`

**by tag id**

`http://localhost:3000/pomodoro_tags?tag_id=1`

**by tag name**

`http://localhost:3000/pomodoro_tags?tag=Python`