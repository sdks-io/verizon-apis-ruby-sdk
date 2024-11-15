# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Network connection events for a device during a specified time period.
  class ConnectionEvent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The attributes that describe the connection event.
    # @return [Array[CustomFields]]
    attr_accessor :connection_event_attributes

    # Currently not used.
    # @return [Array[CustomFields]]
    attr_accessor :extended_attributes

    # The date and time when the connection event occured.
    # @return [String]
    attr_accessor :occurred_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['connection_event_attributes'] = 'connectionEventAttributes'
      @_hash['extended_attributes'] = 'extendedAttributes'
      @_hash['occurred_at'] = 'occurredAt'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        connection_event_attributes
        extended_attributes
        occurred_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(connection_event_attributes = SKIP,
                   extended_attributes = SKIP, occurred_at = SKIP)
      unless connection_event_attributes == SKIP
        @connection_event_attributes =
          connection_event_attributes
      end
      @extended_attributes = extended_attributes unless extended_attributes == SKIP
      @occurred_at = occurred_at unless occurred_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      connection_event_attributes = nil
      unless hash['connectionEventAttributes'].nil?
        connection_event_attributes = []
        hash['connectionEventAttributes'].each do |structure|
          connection_event_attributes << (CustomFields.from_hash(structure) if structure)
        end
      end

      connection_event_attributes = SKIP unless hash.key?('connectionEventAttributes')
      # Parameter is an array, so we need to iterate through it
      extended_attributes = nil
      unless hash['extendedAttributes'].nil?
        extended_attributes = []
        hash['extendedAttributes'].each do |structure|
          extended_attributes << (CustomFields.from_hash(structure) if structure)
        end
      end

      extended_attributes = SKIP unless hash.key?('extendedAttributes')
      occurred_at = hash.key?('occurredAt') ? hash['occurredAt'] : SKIP

      # Create object from extracted values.
      ConnectionEvent.new(connection_event_attributes,
                          extended_attributes,
                          occurred_at)
    end
  end
end
