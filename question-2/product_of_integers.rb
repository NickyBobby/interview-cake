def product_of_other_integers(array_of_integers)
  new_array_of_integers = []

  array_of_integers.each_with_index do |int, index|
    sample_array = array_of_integers
    sample_array[index] = 1
    product = sample_array.inject(:*)
    new_array_of_integers[index] = product
    sample_array[index] = int
  end
  new_array_of_integers
end

p product_of_other_integers([1,2,3,4])
