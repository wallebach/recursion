def fibs(number)
    if number < 2 
        number 
    else
        r1 = 1
        r2 = 0
        for i in 2..number do 
            result = r1 + r2
            r2 = r1
            r1 = result
        end
        result
    end
end

def fibs_rec(number)
    if number < 2
        number
    else 
        fibs_rec(number - 1) + fibs_rec(number - 2)
    end
end

for i in 0..20 do 
    puts "Non-recursive: #{fibs(i)}"
    puts "Recursive: #{fibs_rec(i)}"
    puts "-----"
end