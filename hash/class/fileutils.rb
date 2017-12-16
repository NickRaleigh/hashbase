module Futils
  def touchFile(filename)
    FileUtils.touch "#{filename}"
  end
  def rmFile(filename)
    FileUtils.rm "#{filename}"
  end
end
