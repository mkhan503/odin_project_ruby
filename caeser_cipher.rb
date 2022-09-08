def caesar_cipher(string, num)
    #if shift > 26, 
    num  > 26 ? num = num - 26 : num

    arr = string.chars.map {|i| i.ord}
    arr2 = arr.map do |i|
        new_i = i + num
        #if number is an alphabet, i.e. between 65 & 90 || 97 && 122 then make the wrap
        if (65..90).include? i
            new_i > 90 ? new_i = new_i - 26 : new_i
            #if adding num exceeds 90 or 122, restart from 65/ 97
        elsif  (97..122).include? i
            new_i > 122 ? new_i = new_i - 26 : new_i
            #otherwise don't make shift
        else
            i
        end
    end
    p arr2.map {|i| i.chr}.join

      
end

caesar_cipher("What a string!", 26)
#no



     