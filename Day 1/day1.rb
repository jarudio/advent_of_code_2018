inputs = []
counter = 0

file = File.open( 'input.txt' )
file.each_line do | line |
  inputs.push( line )
end

inputs.each do | input |
  case input[ 0 ]
  when '+'
    number = input.gsub( '+', '' )
    counter += number.to_i
  when '-'
    number = input.gsub( '-', '' )
    counter -= number.to_i
  end
end

puts counter