# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Whether the device location request was successful or not.
  class DeviceLocationSuccessResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :success

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['success'] = 'success'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        success
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(success = SKIP)
      @success = success unless success == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      success = hash.key?('success') ? hash['success'] : SKIP

      # Create object from extracted values.
      DeviceLocationSuccessResult.new(success)
    end
  end
end
