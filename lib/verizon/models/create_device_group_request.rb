# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Create request for a new device group and optionally add devices to the
  # group.
  class CreateDeviceGroupRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Verizon billing account that the device group will belong to. An
    # account name is usually numeric, and must include any leading zeros.
    # @return [String]
    attr_accessor :account_name

    # A description for the device group.
    # @return [String]
    attr_accessor :group_description

    # The name for the new device group. This name must be unique within the
    # specified account.
    # @return [String]
    attr_accessor :group_name

    # Zero or more devices to add to the device group. You can use POST
    # /devices/actions/list to get a list of all devices in the account.
    # @return [Array[DeviceId]]
    attr_accessor :devices_to_add

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['group_description'] = 'groupDescription'
      @_hash['group_name'] = 'groupName'
      @_hash['devices_to_add'] = 'devicesToAdd'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        devices_to_add
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = nil, group_description = nil,
                   group_name = nil, devices_to_add = SKIP)
      @account_name = account_name
      @group_description = group_description
      @group_name = group_name
      @devices_to_add = devices_to_add unless devices_to_add == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      group_description =
        hash.key?('groupDescription') ? hash['groupDescription'] : nil
      group_name = hash.key?('groupName') ? hash['groupName'] : nil
      # Parameter is an array, so we need to iterate through it
      devices_to_add = nil
      unless hash['devicesToAdd'].nil?
        devices_to_add = []
        hash['devicesToAdd'].each do |structure|
          devices_to_add << (DeviceId.from_hash(structure) if structure)
        end
      end

      devices_to_add = SKIP unless hash.key?('devicesToAdd')

      # Create object from extracted values.
      CreateDeviceGroupRequest.new(account_name,
                                   group_description,
                                   group_name,
                                   devices_to_add)
    end
  end
end
