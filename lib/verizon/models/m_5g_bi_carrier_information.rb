# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # M5gBiCarrierInformation Model.
  class M5gBiCarrierInformation < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :carrier_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['carrier_name'] = 'carrierName'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        carrier_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(carrier_name = SKIP)
      @carrier_name = carrier_name unless carrier_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      carrier_name = hash.key?('carrierName') ? hash['carrierName'] : SKIP

      # Create object from extracted values.
      M5gBiCarrierInformation.new(carrier_name)
    end
  end
end
