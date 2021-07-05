require_relative '../../spec_helper.rb'

describe "ExcelFunctions: YEAR" do
  
  it "should return the year given a serial date" do
    FunctionTest.year(1).should == 1900
    FunctionTest.year(20000).should == 1954
  end

  it "should return an error when given inappropriate arguments" do
    FunctionTest.year("Asdasddf").should == :value
  end
  
  it "should return an error if an argument is an error" do
    FunctionTest.year(:error).should == :error
  end
  
  it "should be in the list of functions that can be mapped to ruby" do
    MapFormulaeToRuby::FUNCTIONS[:'YEAR'].should == 'year'
  end
  
end
