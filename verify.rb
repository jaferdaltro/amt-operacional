numb = []
file = File.open("matricula.txt")
file_data = file.readlines.map(&:chomp)
file_data.each do |line|
   line.scan(/\d/).join('')
end