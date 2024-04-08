# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # TriggerValueResponse Model.
  class TriggerValueResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Triggervalues]]
    attr_accessor :triggers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['triggers'] = 'triggers'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        triggers
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(triggers = SKIP)
      @triggers = triggers unless triggers == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      triggers = nil
      unless hash['triggers'].nil?
        triggers = []
        hash['triggers'].each do |structure|
          triggers << (Triggervalues.from_hash(structure) if structure)
        end
      end

      triggers = SKIP unless hash.key?('triggers')

      # Create object from extracted values.
      TriggerValueResponse.new(triggers)
    end
  end
end
