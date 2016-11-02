require "chicago_graffiti_report/version"
require 'unirest'

module ChicagoGraffitiReport
  class Graffiti
    attr_accessor :creation_date, :status, :service_request_number

    def initialize(options_hash)
      @creation_date = options_hash["creation_date"]
      @status = options_hash["status"]
      @service_request_number = options_hash["service_request_number"]
    end
    
    def self.all
      graffiti_response = Unirest.get("https://data.cityofchicago.org/resource/cdmx-wzbz.json?$limit=10").body
      convert_array_to_objects(graffitti_array)             
    end

    def self.where(search_hash)
      search_string = convert_search_hash_to_string(search_hash)
      graffiti_response = Unirest.get("https://data.cityofchicago.org/resource/cdmx-wzbz.json?#{search_string}").body 
      convert_array_to_objects(graffitti_array)
    end

    private

    def self.convert_array_to_objects(graffitti_array)
      collection = []
      graffitti_array.each do |graffiti_hash|
        collection << Graffitii.new(graffiti_hash)
      end
      collection
    end

    def self.convert_search_hash_to_string(search_hash)
      search_array = []
      search_hash.each do |key, value|
        search_array << "#{key}=#{value}"
      end
      search_array.join("&")
    end
  end
end