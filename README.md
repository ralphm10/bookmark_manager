## USER STORIES

```
As a visitor to the website
So I can quickly go one my favourite websites
I want to be shown a list of bookmarks
```
<img src="./bookmarks1.svg" />

```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

## Instructions to set up database

1. Connect to ``` psql```

2. Create the database using ```psql```

```CREATE DATABASE bookmark_manager;```

3. Connect to the database using the ```psql``` command:

```\c bookmark_manager;```

4. Run the SQL scripts in the 'db/migrations' folder in the given order


## Instructions to set up test database

1. Connect to ``` psql```

2. Create the database using ```psql```

```CREATE DATABASE bookmark_manager_test;```

3. Connect to the database using the ```psql``` command:

```\c bookmark_manager_test;```

4. Run the SQL scripts in the 'db/migrations' folder in the given order
