# Quick Sort Algo Implementation

to_sort = [4, 5, 2, 1, 8, 7, 6, 3]

puts to_sort.inspect

def partition array, left, right
	pivot = array[right]
	left_mark = left
	right_mark = right - 1

	while true

		while array[left_mark] < pivot do 
			left_mark += 1
			puts "Left mark: #{left_mark}" 
		end

		while array[right_mark] > pivot and right_mark > 0 do
			right_mark -= 1; 
			puts "Right mark: #{right_mark}" 
		end

		if left_mark >= right_mark
			break
		else
			array[left_mark], array[right_mark] = array[right_mark], array[left_mark]
			puts array.inspect
		end
	end

	array[left_mark], array[right] = array[right], array[left_mark]
	puts array.inspect
	left_mark
end

def quick_sort array, left, right
	if left >= right
		return array
	else	
		new_pivot = partition array, left, right
		quick_sort array, left, new_pivot-1
		quick_sort array, new_pivot+1, right
	end
end

to_sort = quick_sort(to_sort, 0, to_sort.size-1)

puts to_sort.inspect