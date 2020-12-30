## Planning
GET Routes
```
-index route - /scripts (list of scripts)
-show route - /scripts/:id (shows more info about script)
-new route - /scripts/new (displays form to create a new script)
-edit routet - /scripts/:id/edit
```

POST Route
```
- create route - /scripts (creating a new script)
```

PATCH Route
```
-update route - /scripts/:id (updating previous script)
```

DELETE Route
```
- delete route - /scripts/:id (deletes previous script)
```

## Models
Script
------
- Title
- Writer(s)
- Date Read
- Recommendation
- Notes
- belongs to a user

## User
- username/email
- password_digest
- has many scripts
