module ExcelFunctions
  def today()
    (Date.today - Date.new(1900, 1, 1)).to_i
  end
end
