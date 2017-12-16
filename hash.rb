# Loads fileutils
require 'fileutils'
# Loads db entries
load 'hash/db/index.rb'

#Loads hash classes and methods
load 'hash/class/fileutils.rb'
load 'hash/class/write.rb'
load 'hash/class/create.rb'
load 'hash/class/query.rb'


# query = Query.new($test)
# query.update("boop", "loop")
# query.write

# create = Create.new("newTest")
# create.build
