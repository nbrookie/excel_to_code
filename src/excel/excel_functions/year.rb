module ExcelFunctions

  def year(date_as_integer)
    return :value if date_as_integer.is_a?(String)
    return date_as_integer unless date_as_integer.is_a?(Numeric)
    (Date.new(1900, 1, 1) + date_as_integer).year
  end

end
