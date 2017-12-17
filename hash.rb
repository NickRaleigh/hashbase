# Loads fileutils
require 'fileutils'
# Loads db entries
load 'hash/db/index.rb'

#Loads hash classes and methods
load 'hash/class/fileutils.rb'
load 'hash/class/write.rb'
load 'hash/class/destroy.rb'
load 'hash/class/query.rb'
load 'hash/class/Hash.rb'

# To add a new entry to the DB:
# Hash.new("test-entry")

# To select an existing entry:
# query = Query.new($test-entry)

# To update query:
# query.update("cum", "blumpkins")
# Or remove it:
# query.destroy
