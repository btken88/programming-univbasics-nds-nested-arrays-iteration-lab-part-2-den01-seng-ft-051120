def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  min_array = []
  row_index = 0
  while row_index < src.count do
    element_index = 0
    row_min = src[row_index][0]
    while element_index < src[row_index].count do
      if src[row_index][element_index] < row_min
        row_min = src[row_index][element_index]
      end
      element_index += 1
    end
    min_array << row_min
    row_index += 1
  end
  return min_array
end