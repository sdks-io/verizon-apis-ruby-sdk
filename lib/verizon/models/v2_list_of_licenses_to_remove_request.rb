# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # License cancellation candidate devices.
  class V2ListOfLicensesToRemoveRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # List creation option.
    # @return [String]
    attr_accessor :type

    # The number of devices.
    # @return [Integer]
    attr_accessor :count

    # Device IMEI list.
    # @return [Array[String]]
    attr_accessor :device_list

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['count'] = 'count'
      @_hash['device_list'] = 'deviceList'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        type
        count
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_list = nil, type = SKIP, count = SKIP)
      @type = type unless type == SKIP
      @count = count unless count == SKIP
      @device_list = device_list
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_list = hash.key?('deviceList') ? hash['deviceList'] : nil
      type = hash.key?('type') ? hash['type'] : SKIP
      count = hash.key?('count') ? hash['count'] : SKIP

      # Create object from extracted values.
      V2ListOfLicensesToRemoveRequest.new(device_list,
                                          type,
                                          count)
    end
  end
end