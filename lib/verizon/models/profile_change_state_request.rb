# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ProfileChangeStateRequest Model.
  class ProfileChangeStateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[DeviceList]]
    attr_accessor :devices

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :smsr_oid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['devices'] = 'devices'
      @_hash['account_name'] = 'accountName'
      @_hash['smsr_oid'] = 'smsrOid'
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

    def initialize(devices = nil, account_name = nil, smsr_oid = nil)
      @devices = devices
      @account_name = account_name
      @smsr_oid = smsr_oid
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
          devices << (DeviceList.from_hash(structure) if structure)
        end
      end

      devices = nil unless hash.key?('devices')
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      smsr_oid = hash.key?('smsrOid') ? hash['smsrOid'] : nil

      # Create object from extracted values.
      ProfileChangeStateRequest.new(devices,
                                    account_name,
                                    smsr_oid)
    end
  end
end
