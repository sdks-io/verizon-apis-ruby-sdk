# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # M5gBideviceId Model.
  class M5gBideviceId < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [M5gBideviceId1]
    attr_accessor :device_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_id'] = 'deviceId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        device_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_id = SKIP)
      @device_id = device_id unless device_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_id = M5gBideviceId1.from_hash(hash['deviceId']) if hash['deviceId']

      # Create object from extracted values.
      M5gBideviceId.new(device_id)
    end
  end
end