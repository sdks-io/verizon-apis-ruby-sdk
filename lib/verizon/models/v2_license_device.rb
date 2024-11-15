# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Device IMEI list.
  class V2LicenseDevice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Device IMEI.
    # @return [String]
    attr_accessor :device_id

    # License assignment time.
    # @return [String]
    attr_accessor :assignment_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_id'] = 'deviceId'
      @_hash['assignment_time'] = 'assignmentTime'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        assignment_time
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_id = nil, assignment_time = SKIP)
      @device_id = device_id
      @assignment_time = assignment_time unless assignment_time == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_id = hash.key?('deviceId') ? hash['deviceId'] : nil
      assignment_time =
        hash.key?('assignmentTime') ? hash['assignmentTime'] : SKIP

      # Create object from extracted values.
      V2LicenseDevice.new(device_id,
                          assignment_time)
    end
  end
end
