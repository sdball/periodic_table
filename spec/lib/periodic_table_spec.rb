require 'spec_helper'

describe PeriodicTable do
  it "should return data for a named element" do
    element_data = PeriodicTable.lookup('oxygen')
    element_data.should_not be_nil
  end
end
