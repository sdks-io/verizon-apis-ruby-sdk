# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # GIODeviceList Model.
  class GIODeviceList < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[GIODeviceId]]
    attr_accessor :device_ids

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_ids'] = 'deviceIds'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        device_ids
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_ids = SKIP)
      @device_ids = device_ids unless device_ids == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      device_ids = nil
      unless hash['deviceIds'].nil?
        device_ids = []
        hash['deviceIds'].each do |structure|
          device_ids << (GIODeviceId.from_hash(structure) if structure)
        end
      end

      device_ids = SKIP unless hash.key?('deviceIds')

      # Create object from extracted values.
      GIODeviceList.new(device_ids)
    end
  end
end
