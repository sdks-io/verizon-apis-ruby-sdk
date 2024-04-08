# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # GIODeactivateDeviceProfileRequest Model.
  class GIODeactivateDeviceProfileRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[GIODeviceList]]
    attr_accessor :devices

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :service_plan

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :etf_waiver

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :reason_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['devices'] = 'devices'
      @_hash['account_name'] = 'accountName'
      @_hash['service_plan'] = 'servicePlan'
      @_hash['etf_waiver'] = 'etfWaiver'
      @_hash['reason_code'] = 'reasonCode'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        devices
        account_name
        service_plan
        etf_waiver
        reason_code
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(devices = SKIP,
                   account_name = SKIP,
                   service_plan = SKIP,
                   etf_waiver = false,
                   reason_code = SKIP)
      @devices = devices unless devices == SKIP
      @account_name = account_name unless account_name == SKIP
      @service_plan = service_plan unless service_plan == SKIP
      @etf_waiver = etf_waiver unless etf_waiver == SKIP
      @reason_code = reason_code unless reason_code == SKIP
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
          devices << (GIODeviceList.from_hash(structure) if structure)
        end
      end

      devices = SKIP unless hash.key?('devices')
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      service_plan = hash.key?('servicePlan') ? hash['servicePlan'] : SKIP
      etf_waiver = hash['etfWaiver'] ||= false
      reason_code = hash.key?('reasonCode') ? hash['reasonCode'] : SKIP

      # Create object from extracted values.
      GIODeactivateDeviceProfileRequest.new(devices,
                                            account_name,
                                            service_plan,
                                            etf_waiver,
                                            reason_code)
    end
  end
end