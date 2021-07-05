require_relative '../../spec_helper.rb'

describe "ExcelFunctions: AVERAGEIF" do
  
  it "should return something when given appropriate arguments" do
    FunctionTest.averageif([10,100,200], '>10').should == 150.0
  end
  
  it "should be in the list of functions that can be mapped to ruby" do
    MapFormulaeToRuby::FUNCTIONS[:'AVERAGEIF'].should == 'averageif'
  end
  
end
