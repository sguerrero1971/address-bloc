def greeting
  x = ""
  ARGV.each_with_index do |arg, i|
    if i == 0
      x = "#{arg}"
    else
      puts "#{x}" + " #{arg}"
    end
  end
end

greeting
