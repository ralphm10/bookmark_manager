def setup_test_database
  p "setting up the test database"
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE bookmarks RESTART IDENTITY;")
end
