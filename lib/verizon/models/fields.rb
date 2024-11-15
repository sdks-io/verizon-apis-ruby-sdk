# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # List of fields affected by the event.
  class Fields < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # List of the field names and values to set.
    # @return [Configuration]
    attr_accessor :configuration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['configuration'] = 'configuration'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        configuration
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(configuration = SKIP)
      @configuration = configuration unless configuration == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      configuration = Configuration.from_hash(hash['configuration']) if hash['configuration']

      # Create object from extracted values.
      Fields.new(configuration)
    end
  end
end