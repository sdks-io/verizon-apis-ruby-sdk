# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Request to list of all 4G devices with an ICCID (SIM) that was not activated
  # with the expected IMEI (hardware) during a specified time frame.
  class DeviceMismatchListRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Filter out the dates.
    # @return [DateFilter]
    attr_accessor :filter

    # A list of specific devices that you want to check, specified by ICCID or
    # MDN.
    # @return [Array[AccountDeviceList]]
    attr_accessor :devices

    # The account that you want to search for mismatched devices. If you don't
    # specify an accountName, the search includes all devices to which you have
    # access.
    # @return [String]
    attr_accessor :account_name

    # The name of a device group, to only include devices in that group.
    # @return [String]
    attr_accessor :group_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['filter'] = 'filter'
      @_hash['devices'] = 'devices'
      @_hash['account_name'] = 'accountName'
      @_hash['group_name'] = 'groupName'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        devices
        account_name
        group_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(filter = nil, devices = SKIP, account_name = SKIP,
                   group_name = SKIP)
      @filter = filter
      @devices = devices unless devices == SKIP
      @account_name = account_name unless account_name == SKIP
      @group_name = group_name unless group_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      filter = DateFilter.from_hash(hash['filter']) if hash['filter']
      # Parameter is an array, so we need to iterate through it
      devices = nil
      unless hash['devices'].nil?
        devices = []
        hash['devices'].each do |structure|
          devices << (AccountDeviceList.from_hash(structure) if structure)
        end
      end

      devices = SKIP unless hash.key?('devices')
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      group_name = hash.key?('groupName') ? hash['groupName'] : SKIP

      # Create object from extracted values.
      DeviceMismatchListRequest.new(filter,
                                    devices,
                                    account_name,
                                    group_name)
    end
  end
end
