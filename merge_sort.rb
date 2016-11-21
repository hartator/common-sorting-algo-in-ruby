# Merge Sort Algo Implementation

to_sort = [4, 5, 2, 1, 8, 7, 6, 3]

def merge_sort array
	puts array.inspect
	return array if array.size == 1
	array_middle = array.size / 2
	array_1 = merge_sort(array[0..array_middle-1])
	array_2 = merge_sort(array[(array_middle)..-1])
	merge array_1, array_2
end

def merge array_1, array_2
	merged_array = []
	array_1.each do |element_1|
		array_2.each do |element_2|
			if element_1 < element_2
				merged_array += [element_1]
				array_1 -= [element_1]
				break
			else
				merged_array += [element_2]
				array_2 -= [element_2]
			end
		end
	end
	merged_array += array_1
	merged_array += array_2
	puts merged_array.inspect
	return merged_array
end

to_sort = merge_sort(to_sort)

puts to_sort.inspect