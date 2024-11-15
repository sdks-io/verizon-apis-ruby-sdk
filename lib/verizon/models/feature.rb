# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Feature Model.
  class Feature < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The calling and data features available for the account. **Note:** for
    # Global IoT Orchestrator, the features `eUICC Verizon as Lead` and `Global
    # eSim Billing` will always be present.
    # @return [String]
    attr_accessor :features

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['features'] = 'features'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        features
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(features = SKIP)
      @features = features unless features == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      features = hash.key?('features') ? hash['features'] : SKIP

      # Create object from extracted values.
      Feature.new(features)
    end
  end
end
