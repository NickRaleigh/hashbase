class Query
  include Futils
  include Write
  def initialize(select)
    @select = select
  end
  def returnQuery
    puts @select
  end
  # updates value in hash
  def update(k,v)
    @select["#{k}"] = v
  end
end
