require 'spec_helper'

describe PeriodicTable do
  use_vcr_cassette 'periodic_table'
  before :each do
    @element_data = PeriodicTable.lookup('oxygen')
  end

  it "should return data for a named element" do
    @element_data.should_not be_nil
  end

  it "should return the correct atomic symbol" do
    @element_data.symbol.should == 'O'
  end

  it "should return the correct atomic weight" do
    @element_data.atomic_weight.should == '15.9994'
  end

  it "should return the correct atomic number" do
    @element_data.atomic_number.should == '8'
  end

  it "should return the correct element name" do
    @element_data.element_name.should == 'Oxygen'
  end

  it "should return the correct boiling point" do
    @element_data.boiling_point.should == '90.2'
  end

  it "should return the correct ionisation potential" do
    @element_data.ionisation_potential.should == '13.61'
  end

  it "should return the correct electronegativity" do
    @element_data.electronegativity.should == '3.5'
  end

  it "should return the correct atomic radius" do
    @element_data.atomic_radius.should == '0.74'
  end

  it "should return the correct melting point" do
    @element_data.melting_point.should == '55'
  end

  it "should return the correct density" do
    @element_data.density.should == '1.3318'
  end
end
