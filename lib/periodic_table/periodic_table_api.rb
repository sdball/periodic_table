require 'savon'

module PeriodicTable
  class PeriodicTableApi
    def initialize
      @client = Savon::Client.new do
        wsdl.document = 'http://www.webservicex.net/periodictable.asmx?WSDL'
      end
    end

    def query(element_name)
      api_response = @client.request :get_atomic_number do
        soap.body = {'ElementName' => element_name}
      end
      result = api_response.to_hash[:get_atomic_number_response][:get_atomic_number_result]
      ApiResponse.new(result)
    end
  end

  # Wow, this is ugly. I did not expect nested XML.
  class ApiResponse
    def initialize(result)
      xml = Nokogiri::XML.parse(result)
      @data = xml.xpath("NewDataSet/Table").first.element_children
    end

    def method_missing(method)
      method = method.to_s
      # the webservicex api mispells "electronegativity"
      method = 'eletronegativity' if method == 'electronegativity'
      element = @data.find { |e| e.name =~ /#{method.gsub('_', '')}/i }
      element.text if element
    end
  end
end
