require_relative '../../spec_helper.rb'

describe "ExcelFunctions: TODAY" do

  it "should return number of days since 1900-01-01 when given no arguments" do
    allow(Date).to receive(:today).and_return(Date.parse('2021-07-04'))
    FunctionTest.today().should == 44379
  end

  it "should not accept any arguments" do
    expect { FunctionTest.today("Asdasddf") }.to raise_error ArgumentError
  end

  it "should be in the list of functions that can be mapped to ruby" do
    MapFormulaeToRuby::FUNCTIONS[:'TODAY'].should == 'today'
  end

end
