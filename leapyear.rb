puts "please enter your starting year: "
starting_year = gets.chomp.to_i

puts "please enter your ending year: "
ending_year = gets.chomp.to_i

while starting_year < ending_year
  starting_year +=1
  if starting_year % 4 == 0 && starting_year % 100 != 0
    puts starting_year
  elsif starting_year % 400 == 0
    puts starting_year
  end
end




