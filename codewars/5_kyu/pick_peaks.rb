def pick_peaks(arr)
  hash = {
    "pos" => [],
    "peaks" => []
  }
  
  arr.each_with_index do |value, index|
    if arr[index] > arr[index - 1] && arr[index] > arr[index + 1]
      # binding.pry
      hash["pos"] << index
      hash["peaks"] << value
    end 
  end 
  
  return hash
end