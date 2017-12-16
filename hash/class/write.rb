module Write
  def write
    i=@select.count
    hashLocation = @select["hashLocation"]
    hashID = @select["hashID"]
    rmFile(hashLocation)
    touchFile(hashLocation)
      while i > 0
        open(hashLocation, 'a') { |f| f.puts  "$#{hashID} = {\n"}
        @select.each do |k, v|
          if i > 1 
            open(hashLocation, 'a') { |f| f.puts  "\t\"#{k}\"=>\"#{v}\",\n"}
          elsif i == 1
            open(hashLocation, 'a') { |f| f.puts  "\t\"#{k}\"=>\"#{v}\"\n"}
          end
        i = i - 1
      end
    end
      open(hashLocation, 'a') { |f| f.puts  "}"}
  end
end
