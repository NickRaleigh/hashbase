class Hash
  include Futils
  include Write
  def initialize(id)
    @id = id
    @hash = {}
    @hashLocation = "hash/db/_#{@id}.rb"
    build
  end
  def build
    touchFile(@hashLocation)
    @hash["hashID"] = @id
    @hash["hashLocation"] = @hashLocation
    query = Query.new(@hash)
    query.write
    updateIndex
    load 'hash/db/index.rb'
  end
  def updateIndex
    indexLocation = 'hash/db/index.rb'
    open(indexLocation, 'a') { |f| f.puts  "load 'hash/db/_#{@id}.rb'"}
  end
end
