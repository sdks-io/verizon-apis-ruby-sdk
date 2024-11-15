# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DailyUsage Model.
  class DailyUsage < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [GIODeviceId]
    attr_accessor :device_id

    # The start date of the time period queried as "$datetime"
    # @return [String]
    attr_accessor :earliest

    # The end date of the time period being queried as "$datetime"
    # @return [String]
    attr_accessor :latest

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_id'] = 'deviceId'
      @_hash['earliest'] = 'earliest'
      @_hash['latest'] = 'latest'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        device_id
        earliest
        latest
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_id = SKIP, earliest = SKIP, latest = SKIP)
      @device_id = device_id unless device_id == SKIP
      @earliest = earliest unless earliest == SKIP
      @latest = latest unless latest == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_id = GIODeviceId.from_hash(hash['deviceId']) if hash['deviceId']
      earliest = hash.key?('earliest') ? hash['earliest'] : SKIP
      latest = hash.key?('latest') ? hash['latest'] : SKIP

      # Create object from extracted values.
      DailyUsage.new(device_id,
                     earliest,
                     latest)
    end
  end
end