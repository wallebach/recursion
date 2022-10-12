def merge_sort(array)
    return array if array.size < 2

    middle = array.size / 2 
    left = merge_sort(array[0...middle])
    right = merge_sort(array[middle..array.size])
    merge(left, right)
end

def merge(left, right, array = [])
    (left.size + right.size).times do
        if left.empty? 
            array << right.shift
        elsif right.empty?
            array << left.shift
        else
            compare = left <=> right
            if compare == -1 
                array << left.shift
            elsif compare == 1
                array << right.shift
            else 
                array << left.shift
            end
        end
    end
    array
end

array = []
rand(100).times do
  array << rand(1000)
end

puts merge_sort(array)