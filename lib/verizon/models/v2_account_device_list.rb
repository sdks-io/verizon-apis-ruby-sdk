# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # List of device information for an account.
  class V2AccountDeviceList < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account name.
    # @return [String]
    attr_accessor :account_name

    # Has more device flag?
    # @return [TrueClass | FalseClass]
    attr_accessor :has_more_data

    # Last seen device identifier.
    # @return [String]
    attr_accessor :last_seen_device_id

    # Maximum page size.
    # @return [Integer]
    attr_accessor :max_page_size

    # Account device list.
    # @return [Array[V2AccountDevice]]
    attr_accessor :device_list

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['has_more_data'] = 'hasMoreData'
      @_hash['last_seen_device_id'] = 'lastSeenDeviceId'
      @_hash['max_page_size'] = 'maxPageSize'
      @_hash['device_list'] = 'deviceList'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        last_seen_device_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = nil, has_more_data = nil, max_page_size = nil,
                   device_list = nil, last_seen_device_id = SKIP)
      @account_name = account_name
      @has_more_data = has_more_data
      @last_seen_device_id = last_seen_device_id unless last_seen_device_id == SKIP
      @max_page_size = max_page_size
      @device_list = device_list
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      has_more_data = hash.key?('hasMoreData') ? hash['hasMoreData'] : nil
      max_page_size = hash.key?('maxPageSize') ? hash['maxPageSize'] : nil
      # Parameter is an array, so we need to iterate through it
      device_list = nil
      unless hash['deviceList'].nil?
        device_list = []
        hash['deviceList'].each do |structure|
          device_list << (V2AccountDevice.from_hash(structure) if structure)
        end
      end

      device_list = nil unless hash.key?('deviceList')
      last_seen_device_id =
        hash.key?('lastSeenDeviceId') ? hash['lastSeenDeviceId'] : SKIP

      # Create object from extracted values.
      V2AccountDeviceList.new(account_name,
                              has_more_data,
                              max_page_size,
                              device_list,
                              last_seen_device_id)
    end
  end
end
