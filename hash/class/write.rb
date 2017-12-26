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
            if v.kind_of?(String)
              puts "#{v} it's a string"
              open(hashLocation, 'a') { |f| f.puts  "\t\"#{k}\"=>\"#{v}\",\n"}
            elsif v.kind_of?(Array)
              puts "#{v} it's an array"
              open(hashLocation, 'a') { |f| f.puts  "\t\"#{k}\"=>#{v},\n"}
            end
          elsif i == 1
            if v.kind_of?(String)
              puts "#{v} it's a string"
              open(hashLocation, 'a') { |f| f.puts  "\t\"#{k}\"=>\"#{v}\"\n"}
            elsif v.kind_of?(Array)
              puts "#{v} it's an array"
              open(hashLocation, 'a') { |f| f.puts  "\t\"#{k}\"=>#{v}\n"}
            end
          end
        i = i - 1
      end
    end
      open(hashLocation, 'a') { |f| f.puts  "}"}
  end
end
