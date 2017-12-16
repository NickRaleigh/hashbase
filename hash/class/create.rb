class Create
  include Futils
  include Write
  def initialize(id)
    @id = id
    @hash = {}
  end
  def build
    hashLocation = "hash/db/_#{@id}.rb"
    touchFile(hashLocation)
    @hash["hashID"] = @id
    @hash["hashLocation"] = hashLocation
    query = Query.new(@hash)
    query.write
    updateIndex
  end
  def updateIndex
    indexLocation = 'hash/db/index.rb'
    open(indexLocation, 'a') { |f| f.puts  "load 'hash/db/_#{@id}.rb'"}
  end
end
