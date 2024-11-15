# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Get device experience score history.
  class GetDeviceExperienceScoreHistoryRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account name.
    # @return [String]
    attr_accessor :account_name

    # Device Id details.
    # @return [DeviceIdentifier]
    attr_accessor :device_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['device_id'] = 'deviceId'
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

    def initialize(account_name = nil, device_id = nil)
      @account_name = account_name
      @device_id = device_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      device_id = DeviceIdentifier.from_hash(hash['deviceId']) if hash['deviceId']

      # Create object from extracted values.
      GetDeviceExperienceScoreHistoryRequest.new(account_name,
                                                 device_id)
    end
  end
end
