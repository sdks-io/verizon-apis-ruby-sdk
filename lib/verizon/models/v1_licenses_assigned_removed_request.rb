# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # IMEIs of the devices to assign licenses to.
  class V1LicensesAssignedRemovedRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The IMEIs of the devices.
    # @return [Array[String]]
    attr_accessor :device_list

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
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

    def initialize(device_list = nil)
      @device_list = device_list
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_list = hash.key?('deviceList') ? hash['deviceList'] : nil

      # Create object from extracted values.
      V1LicensesAssignedRemovedRequest.new(device_list)
    end
  end
end
