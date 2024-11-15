# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # M5gBideviceDetailsresponse Model.
  class M5gBideviceDetailsresponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :has_more_data

    # TODO: Write general description for this method
    # @return [Array[M5gBiaccountNameobject]]
    attr_accessor :devices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['has_more_data'] = 'hasMoreData'
      @_hash['devices'] = 'devices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        has_more_data
        devices
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(has_more_data = SKIP, devices = SKIP)
      @has_more_data = has_more_data unless has_more_data == SKIP
      @devices = devices unless devices == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      has_more_data = hash.key?('hasMoreData') ? hash['hasMoreData'] : SKIP
      # Parameter is an array, so we need to iterate through it
      devices = nil
      unless hash['devices'].nil?
        devices = []
        hash['devices'].each do |structure|
          devices << (M5gBiaccountNameobject.from_hash(structure) if structure)
        end
      end

      devices = SKIP unless hash.key?('devices')

      # Create object from extracted values.
      M5gBideviceDetailsresponse.new(has_more_data,
                                     devices)
    end
  end
end
