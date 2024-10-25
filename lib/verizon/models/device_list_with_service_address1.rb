# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DeviceListWithServiceAddress1 Model.
  class DeviceListWithServiceAddress1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[M5gBideviceId1]]
    attr_accessor :device_id

    # TODO: Write general description for this method
    # @return [M5gBiprimaryPlaceofuse]
    attr_accessor :primary_placeofuse

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_id'] = 'deviceId'
      @_hash['primary_placeofuse'] = 'primaryPlaceofuse'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        device_id
        primary_placeofuse
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_id = SKIP, primary_placeofuse = SKIP)
      @device_id = device_id unless device_id == SKIP
      @primary_placeofuse = primary_placeofuse unless primary_placeofuse == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      device_id = nil
      unless hash['deviceId'].nil?
        device_id = []
        hash['deviceId'].each do |structure|
          device_id << (M5gBideviceId1.from_hash(structure) if structure)
        end
      end

      device_id = SKIP unless hash.key?('deviceId')
      primary_placeofuse = M5gBiprimaryPlaceofuse.from_hash(hash['primaryPlaceofuse']) if
        hash['primaryPlaceofuse']

      # Create object from extracted values.
      DeviceListWithServiceAddress1.new(device_id,
                                        primary_placeofuse)
    end
  end
end