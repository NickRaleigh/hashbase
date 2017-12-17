module Destroy
  def destroy
    hashID = @select["hashID"]
    hashLocation = "hash/db/_#{hashID}.rb"
    rmFile(hashLocation)
    deleteFromIndex(hashLocation)
  end
  def deleteFromIndex(matchingLine)
    touchFile('hash/db/tmp.rb')
		File.open('hash/db/tmp.rb', 'w') do |out_file|
			File.foreach('hash/db/index.rb').with_index do |line,line_number|
        out_file.puts line unless line.include?(matchingLine)
			end
		end
    rmFile('hash/db/index.rb')
    mvFile('hash/db/tmp.rb','hash/db/index.rb')
  end
end
