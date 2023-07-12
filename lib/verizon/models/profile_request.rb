# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ProfileRequest Model.
  class ProfileRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[DeviceList]]
    attr_accessor :devices

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :carrier_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :service_plan

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :mdn_zip_code

    # TODO: Write general description for this method
    # @return [Array[PrimaryPlaceOfUse]]
    attr_accessor :primary_place_of_use

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['devices'] = 'devices'
      @_hash['carrier_name'] = 'carrierName'
      @_hash['account_name'] = 'accountName'
      @_hash['service_plan'] = 'servicePlan'
      @_hash['mdn_zip_code'] = 'mdnZipCode'
      @_hash['primary_place_of_use'] = 'primaryPlaceOfUse'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        devices
        carrier_name
        account_name
        service_plan
        mdn_zip_code
        primary_place_of_use
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(devices = SKIP,
                   carrier_name = SKIP,
                   account_name = SKIP,
                   service_plan = SKIP,
                   mdn_zip_code = SKIP,
                   primary_place_of_use = SKIP)
      @devices = devices unless devices == SKIP
      @carrier_name = carrier_name unless carrier_name == SKIP
      @account_name = account_name unless account_name == SKIP
      @service_plan = service_plan unless service_plan == SKIP
      @mdn_zip_code = mdn_zip_code unless mdn_zip_code == SKIP
      @primary_place_of_use = primary_place_of_use unless primary_place_of_use == SKIP
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

      devices = SKIP unless hash.key?('devices')
      carrier_name = hash.key?('carrierName') ? hash['carrierName'] : SKIP
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      service_plan = hash.key?('servicePlan') ? hash['servicePlan'] : SKIP
      mdn_zip_code = hash.key?('mdnZipCode') ? hash['mdnZipCode'] : SKIP
      # Parameter is an array, so we need to iterate through it
      primary_place_of_use = nil
      unless hash['primaryPlaceOfUse'].nil?
        primary_place_of_use = []
        hash['primaryPlaceOfUse'].each do |structure|
          primary_place_of_use << (PrimaryPlaceOfUse.from_hash(structure) if structure)
        end
      end

      primary_place_of_use = SKIP unless hash.key?('primaryPlaceOfUse')

      # Create object from extracted values.
      ProfileRequest.new(devices,
                         carrier_name,
                         account_name,
                         service_plan,
                         mdn_zip_code,
                         primary_place_of_use)
    end
  end
end
