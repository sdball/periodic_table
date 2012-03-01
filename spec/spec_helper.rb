require 'periodic_table'
require 'vcr'

VCR.config do |c|
  c.cassette_library_dir = 'spec/support/cassettes'
  c.stub_with :fakeweb
end

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
end
