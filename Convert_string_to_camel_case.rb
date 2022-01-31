def to_camel_case(input)
    output = ""
    i = 0
    until i > input.length-1 do
        if input[i] == "_" || input[i] == "-"
            output += input[i+1].upcase
            i += 2
        else
            output += input[i]
            i += 1
        end
    end
    return output
end

#Best
    # str.gsub(/[_-](.)/) {"#{$1.upcase}"}
    # str.gsub('_','-').split('-').each_with_index.map{ |x,i| i == 0 ? x : x.capitalize }.join