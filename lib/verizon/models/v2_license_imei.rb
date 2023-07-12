# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # IMEIs of the devices to assign or remove licenses.
  class V2LicenseIMEI < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account name.
    # @return [String]
    attr_accessor :account_name

    # Device IMEI list.
    # @return [Array[String]]
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
      %w[
        account_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_list = nil,
                   account_name = SKIP)
      @account_name = account_name unless account_name == SKIP
      @device_list = device_list
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_list = hash.key?('deviceList') ? hash['deviceList'] : nil
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP

      # Create object from extracted values.
      V2LicenseIMEI.new(device_list,
                        account_name)
    end
  end
end
