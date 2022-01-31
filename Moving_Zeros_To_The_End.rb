def find_missing_letter(input)
    output = input.select { |elem| elem != 0 }.push(input.select { |elem| elem == 0 })
    return output
end

# [false,1,0,1,2,0,1,3,"a"]