require 'periodic_table/version'
require 'periodic_table/periodic_table_api'

module PeriodicTable
  def self.lookup(element_name)
    PeriodicTableApi.new.query(element_name)
  end
end
