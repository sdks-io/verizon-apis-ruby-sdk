# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Verizon
  # GIOSmsMessage Model.
  class GIOSmsMessage < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[GIODeviceId]]
    attr_accessor :device_ids

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :timestamp

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_ids'] = 'deviceIds'
      @_hash['message'] = 'message'
      @_hash['timestamp'] = 'timestamp'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        device_ids
        message
        timestamp
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_ids = SKIP, message = SKIP, timestamp = SKIP)
      @device_ids = device_ids unless device_ids == SKIP
      @message = message unless message == SKIP
      @timestamp = timestamp unless timestamp == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      device_ids = nil
      unless hash['deviceIds'].nil?
        device_ids = []
        hash['deviceIds'].each do |structure|
          device_ids << (GIODeviceId.from_hash(structure) if structure)
        end
      end

      device_ids = SKIP unless hash.key?('deviceIds')
      message = hash.key?('message') ? hash['message'] : SKIP
      timestamp = if hash.key?('timestamp')
                    (DateTimeHelper.from_rfc3339(hash['timestamp']) if hash['timestamp'])
                  else
                    SKIP
                  end

      # Create object from extracted values.
      GIOSmsMessage.new(device_ids,
                        message,
                        timestamp)
    end

    def to_custom_timestamp
      DateTimeHelper.to_rfc3339(timestamp)
    end
  end
end
