module ExcelFunctions
  
  def averageif(range, criteria, average_range = range)
    averageifs(average_range, range, criteria)
  end
  
end
