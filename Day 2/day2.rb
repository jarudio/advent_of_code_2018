inputs = []

file = File.open( 'input.txt' )
file.each_line do | line |
  inputs.push( line )
end

def checksum( inputs )

  appears_twice = 0
  appears_thrice = 0

  inputs.each do | input |
    hash = {}
    characters = input.split( '' )
    twice_counter = 0
    thrice_counter = 0

    characters.each do | char |
      hash[ char ].nil? ?
        hash[ char ] = 1 :
        hash[ char ] += 1
    end

    hash.each do | key, value |
      if value == 2 && 
        twice_counter += 1
      elsif value == 3
        thrice_counter += 1
      end
    end
    appears_twice += 1 if twice_counter >= 1
    appears_thrice +=1 if thrice_counter >= 1
  end

  return appears_twice * appears_thrice
end

puts checksum( inputs )