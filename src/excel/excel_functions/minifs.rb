module ExcelFunctions
  
  def minifs(min_range, *criteria)
    filtered = _filtered_range(min_range, *criteria)
    min(*filtered)
  end
  
end
