# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SharePlan Model.
  class SharePlan < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :from_carrier_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :to_carrier_code

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :criteria_percentage

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['from_carrier_code'] = 'fromCarrierCode'
      @_hash['to_carrier_code'] = 'toCarrierCode'
      @_hash['criteria_percentage'] = 'criteriaPercentage'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        from_carrier_code
        to_carrier_code
        criteria_percentage
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(from_carrier_code = SKIP, to_carrier_code = SKIP,
                   criteria_percentage = SKIP)
      @from_carrier_code = from_carrier_code unless from_carrier_code == SKIP
      @to_carrier_code = to_carrier_code unless to_carrier_code == SKIP
      @criteria_percentage = criteria_percentage unless criteria_percentage == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      from_carrier_code =
        hash.key?('fromCarrierCode') ? hash['fromCarrierCode'] : SKIP
      to_carrier_code =
        hash.key?('toCarrierCode') ? hash['toCarrierCode'] : SKIP
      criteria_percentage =
        hash.key?('criteriaPercentage') ? hash['criteriaPercentage'] : SKIP

      # Create object from extracted values.
      SharePlan.new(from_carrier_code,
                    to_carrier_code,
                    criteria_percentage)
    end
  end
end