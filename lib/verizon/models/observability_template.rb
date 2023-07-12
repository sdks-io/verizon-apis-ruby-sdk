# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Attribute of service.
  class ObservabilityTemplate < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Auto generated id of the observabilityTemplate spec file uploaded.
    # @return [String]
    attr_accessor :id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP)
      @id = id unless id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP

      # Create object from extracted values.
      ObservabilityTemplate.new(id)
    end
  end
end
