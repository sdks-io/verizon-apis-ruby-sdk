# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SubscribeRequest Model.
  class SubscribeRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_name

    # TODO: Write general description for this method
    # @return [Array[QosDeviceInfo]]
    attr_accessor :device_info

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['device_info'] = 'deviceInfo'
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

    def initialize(account_name = nil, device_info = nil)
      @account_name = account_name
      @device_info = device_info
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      # Parameter is an array, so we need to iterate through it
      device_info = nil
      unless hash['deviceInfo'].nil?
        device_info = []
        hash['deviceInfo'].each do |structure|
          device_info << (QosDeviceInfo.from_hash(structure) if structure)
        end
      end

      device_info = nil unless hash.key?('deviceInfo')

      # Create object from extracted values.
      SubscribeRequest.new(account_name,
                           device_info)
    end
  end
end
