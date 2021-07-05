require_relative '../../spec_helper.rb'

describe "ExcelFunctions: MINIFS" do
  
  it "should return something when given appropriate arguments" do
    FunctionTest.minifs([1,2,3,4], '>1').should == 2
  end

  it "should be in the list of functions that can be mapped to ruby" do
    MapFormulaeToRuby::FUNCTIONS[:'MINIFS'].should == 'minifs'
  end
  
end
