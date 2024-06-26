# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # FilterCriteriaAccountGroupShare Model.
  class FilterCriteriaAccountGroupShare < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :rate_plan_group_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['rate_plan_group_id'] = 'ratePlanGroupId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        rate_plan_group_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(rate_plan_group_id = SKIP)
      @rate_plan_group_id = rate_plan_group_id unless rate_plan_group_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      rate_plan_group_id =
        hash.key?('ratePlanGroupId') ? hash['ratePlanGroupId'] : SKIP

      # Create object from extracted values.
      FilterCriteriaAccountGroupShare.new(rate_plan_group_id)
    end
  end
end
