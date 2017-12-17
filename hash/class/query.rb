class Query
  include Futils
  include Write
  include Destroy
  def initialize(select)
    @select = select
  end
  def returnQuery
    puts @select
  end
  def update(k,v)
    @select["#{k}"] = v
    write
  end
end
