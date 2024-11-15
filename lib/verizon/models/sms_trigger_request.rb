# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SMSTriggerRequest Model.
  class SMSTriggerRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :comparator

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :sms_type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :threshold

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['comparator'] = 'comparator'
      @_hash['sms_type'] = 'smsType'
      @_hash['threshold'] = 'threshold'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        comparator
        sms_type
        threshold
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(comparator = SKIP, sms_type = SKIP, threshold = SKIP)
      @comparator = comparator unless comparator == SKIP
      @sms_type = sms_type unless sms_type == SKIP
      @threshold = threshold unless threshold == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      comparator = hash.key?('comparator') ? hash['comparator'] : SKIP
      sms_type = hash.key?('smsType') ? hash['smsType'] : SKIP
      threshold = hash.key?('threshold') ? hash['threshold'] : SKIP

      # Create object from extracted values.
      SMSTriggerRequest.new(comparator,
                            sms_type,
                            threshold)
    end
  end
end