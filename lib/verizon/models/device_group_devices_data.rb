# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Returns the name, description, and list of devices in a device group.
  class DeviceGroupDevicesData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The description of the device group.
    # @return [String]
    attr_accessor :description

    # The devices in the device group.
    # @return [Array[AccountDeviceList]]
    attr_accessor :devices

    # False for a status 200 response.True for a status 202 response, indicating
    # that there is more data to be retrieved.
    # @return [TrueClass | FalseClass]
    attr_accessor :has_more_data

    # The name of the device group.
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['description'] = 'description'
      @_hash['devices'] = 'devices'
      @_hash['has_more_data'] = 'hasMoreData'
      @_hash['name'] = 'name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        description
        devices
        has_more_data
        name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(description = SKIP, devices = SKIP, has_more_data = SKIP,
                   name = SKIP)
      @description = description unless description == SKIP
      @devices = devices unless devices == SKIP
      @has_more_data = has_more_data unless has_more_data == SKIP
      @name = name unless name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      description = hash.key?('description') ? hash['description'] : SKIP
      # Parameter is an array, so we need to iterate through it
      devices = nil
      unless hash['devices'].nil?
        devices = []
        hash['devices'].each do |structure|
          devices << (AccountDeviceList.from_hash(structure) if structure)
        end
      end

      devices = SKIP unless hash.key?('devices')
      has_more_data = hash.key?('hasMoreData') ? hash['hasMoreData'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP

      # Create object from extracted values.
      DeviceGroupDevicesData.new(description,
                                 devices,
                                 has_more_data,
                                 name)
    end
  end
end
