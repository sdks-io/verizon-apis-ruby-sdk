# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # The list of devices in the account.
  class DeviceListQueryItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Device IMEI.
    # @return [String]
    attr_accessor :device_id

    # The MDN (phone number) of the device.
    # @return [String]
    attr_accessor :mdn

    # The device model name.
    # @return [String]
    attr_accessor :model

    # The device make.
    # @return [String]
    attr_accessor :make

    # The name of the firmware image currently installed on the device.
    # @return [String]
    attr_accessor :firmware

    # True if the device firmware can be upgraded over the air using the
    # Software Management Services API.
    # @return [TrueClass | FalseClass]
    attr_accessor :fota_eligible

    # True if an MRC license has been assigned to this device.
    # @return [TrueClass | FalseClass]
    attr_accessor :license_assigned

    # The date and time that the device firmware was last upgraded. If a device
    # has never been upgraded, the upgradeTime will be 01/01/1900 0:0:0.
    # @return [String]
    attr_accessor :upgrade_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_id'] = 'deviceId'
      @_hash['mdn'] = 'mdn'
      @_hash['model'] = 'model'
      @_hash['make'] = 'make'
      @_hash['firmware'] = 'firmware'
      @_hash['fota_eligible'] = 'fotaEligible'
      @_hash['license_assigned'] = 'licenseAssigned'
      @_hash['upgrade_time'] = 'upgradeTime'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        device_id
        mdn
        model
        make
        firmware
        fota_eligible
        license_assigned
        upgrade_time
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_id = SKIP, mdn = SKIP, model = SKIP, make = SKIP,
                   firmware = SKIP, fota_eligible = SKIP,
                   license_assigned = SKIP, upgrade_time = SKIP)
      @device_id = device_id unless device_id == SKIP
      @mdn = mdn unless mdn == SKIP
      @model = model unless model == SKIP
      @make = make unless make == SKIP
      @firmware = firmware unless firmware == SKIP
      @fota_eligible = fota_eligible unless fota_eligible == SKIP
      @license_assigned = license_assigned unless license_assigned == SKIP
      @upgrade_time = upgrade_time unless upgrade_time == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_id = hash.key?('deviceId') ? hash['deviceId'] : SKIP
      mdn = hash.key?('mdn') ? hash['mdn'] : SKIP
      model = hash.key?('model') ? hash['model'] : SKIP
      make = hash.key?('make') ? hash['make'] : SKIP
      firmware = hash.key?('firmware') ? hash['firmware'] : SKIP
      fota_eligible = hash.key?('fotaEligible') ? hash['fotaEligible'] : SKIP
      license_assigned =
        hash.key?('licenseAssigned') ? hash['licenseAssigned'] : SKIP
      upgrade_time = hash.key?('upgradeTime') ? hash['upgradeTime'] : SKIP

      # Create object from extracted values.
      DeviceListQueryItem.new(device_id,
                              mdn,
                              model,
                              make,
                              firmware,
                              fota_eligible,
                              license_assigned,
                              upgrade_time)
    end
  end
end
