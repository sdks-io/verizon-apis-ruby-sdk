# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Time window.
  class V3TimeWindow < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Start hour in range [0..23], current hour >= startTime.
    # @return [Integer]
    attr_accessor :start_time

    # End hour in range [1..24], current hour < endTime.
    # @return [Integer]
    attr_accessor :end_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['start_time'] = 'startTime'
      @_hash['end_time'] = 'endTime'
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

    def initialize(start_time = nil, end_time = nil)
      @start_time = start_time
      @end_time = end_time
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      start_time = hash.key?('startTime') ? hash['startTime'] : nil
      end_time = hash.key?('endTime') ? hash['endTime'] : nil

      # Create object from extracted values.
      V3TimeWindow.new(start_time,
                       end_time)
    end
  end
end
