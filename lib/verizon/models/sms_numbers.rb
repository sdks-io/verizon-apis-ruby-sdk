# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SmsNumbers Model.
  class SmsNumbers < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :carrier

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['number'] = 'number'
      @_hash['carrier'] = 'carrier'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        number
        carrier
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(number = SKIP,
                   carrier = SKIP)
      @number = number unless number == SKIP
      @carrier = carrier unless carrier == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number = hash.key?('number') ? hash['number'] : SKIP
      carrier = hash.key?('carrier') ? hash['carrier'] : SKIP

      # Create object from extracted values.
      SmsNumbers.new(number,
                     carrier)
    end
  end
end