# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Get device experience score bulk request.
  class GetDeviceExperienceScoreBulkRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account name.
    # @return [String]
    attr_accessor :account_name

    # Account name.
    # @return [Array[DeviceIdentifier]]
    attr_accessor :device_list

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['device_list'] = 'deviceList'
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

    def initialize(account_name = nil,
                   device_list = nil)
      @account_name = account_name
      @device_list = device_list
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      # Parameter is an array, so we need to iterate through it
      device_list = nil
      unless hash['deviceList'].nil?
        device_list = []
        hash['deviceList'].each do |structure|
          device_list << (DeviceIdentifier.from_hash(structure) if structure)
        end
      end

      device_list = nil unless hash.key?('deviceList')

      # Create object from extracted values.
      GetDeviceExperienceScoreBulkRequest.new(account_name,
                                              device_list)
    end
  end
end
