# Bubble Sort Algo Implementation

to_sort = [4, 5, 2, 1, 8, 7, 6, 3]

puts to_sort.inspect

def bubble_sort array
	sorted = false
	until sorted
		sorted = true
		for i in 0..(array.size-2)
			if array[i] > array[i+1]
				sorted = false
				array[i], array[i+1] = array[i+1], array[i]
			end
		end
	end
	array
end

to_sort = bubble_sort(to_sort)

puts to_sort.inspect