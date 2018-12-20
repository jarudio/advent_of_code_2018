inputs = []

file = File.open( 'input1.txt' )

file.each_line do | line |
  inputs.push( line )
end

hash = {}
frequency = 0
found_twice = false
answer = ''

until found_twice
  inputs.each do | input |
    case input[ 0 ]
    when '+'
      number = input.gsub( '+', '' )
      frequency += number.to_i
    when '-'
      number = input.gsub( '-', '' )
      frequency -= number.to_i
    end

    if hash[ frequency ].nil?
      hash[ frequency ] = 1
    else
      hash[ frequency ] += 1
      found_twice = true
      answer = frequency
      break
    end
  end
end

puts answer