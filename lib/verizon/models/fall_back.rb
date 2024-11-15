# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # FallBack Model.
  class FallBack < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # An array containing the `deviceId` array.
    # @return [Array[DeviceIdarray]]
    attr_accessor :devices

    # The numeric name of the account, in the format "0000123456-00001". Leading
    # zeros must be included.
    # @return [String]
    attr_accessor :account_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['devices'] = 'devices'
      @_hash['account_name'] = 'accountName'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        devices
        account_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(devices = SKIP, account_name = SKIP)
      @devices = devices unless devices == SKIP
      @account_name = account_name unless account_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      devices = nil
      unless hash['devices'].nil?
        devices = []
        hash['devices'].each do |structure|
          devices << (DeviceIdarray.from_hash(structure) if structure)
        end
      end

      devices = SKIP unless hash.key?('devices')
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP

      # Create object from extracted values.
      FallBack.new(devices,
                   account_name)
    end
  end
end
