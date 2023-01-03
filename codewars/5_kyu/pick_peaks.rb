def pick_peaks(arr)
  hash = {
    "pos" => [],
    "peaks" => []
  }
  
  new_array = []

  arr.each_with_index do |value, index|
    if arr[index + 1] != value || index == arr[-1]
      new_array << value 
    end
  end 

  new_array.each_with_index do |value, index|
    if new_array[index - 1].nil? || new_array[index + 1].nil? || index == 0
      next 
    elsif new_array[index] > new_array[index - 1] && new_array[index] > new_array[index + 1]
      hash["pos"] << index
      hash["peaks"] << value
    end 
  end 
 return hash
end 