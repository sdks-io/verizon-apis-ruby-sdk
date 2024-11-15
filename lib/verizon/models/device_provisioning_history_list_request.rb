# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Request to return the provisioning history of a specified device during a
  # specified time period.
  class DeviceProvisioningHistoryListRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # An identifier for a single device.
    # @return [DeviceId]
    attr_accessor :device_id

    # The earliest date and time for which you want provisioning data.
    # @return [String]
    attr_accessor :earliest

    # The last date and time for which you want provisioning data.
    # @return [String]
    attr_accessor :latest

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_id'] = 'deviceId'
      @_hash['earliest'] = 'earliest'
      @_hash['latest'] = 'latest'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_id = nil, earliest = nil, latest = nil)
      @device_id = device_id
      @earliest = earliest
      @latest = latest
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_id = DeviceId.from_hash(hash['deviceId']) if hash['deviceId']
      earliest = hash.key?('earliest') ? hash['earliest'] : nil
      latest = hash.key?('latest') ? hash['latest'] : nil

      # Create object from extracted values.
      DeviceProvisioningHistoryListRequest.new(device_id,
                                               earliest,
                                               latest)
    end
  end
end
