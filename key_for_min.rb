# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    array= []

    name_hash.each{|key, value| array << value}

    smallest_value = array[0] # smallest_value variable is equal to the first element in the array

    array.each {|value| smallest_value= value if value< smallest_value} #if the value passed through is smaller than the current value at value[0], 
                                                                    #replace value[0] with that value. 
                                                                    #since smallest_value variable is equal to value[0], 
                                                                    #it will now be equal to the smallest value
    name_hash.each {|key, value| return key if smallest_value == value } # now that we were able to make the variable smalles_value actually equal to the smallest value of the array
                                                                            # we will check to see if any of the values in the has equal the smallest_value variable 
                                                                            # if any value in the has is equal to that variale, we know it is also actually the smallest value so we will return it
       # If the method is called and passed an argument of an empty hash, it should return nil
    if name_hash== {}
        return nil
    end                                    
end  