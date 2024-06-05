# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # AccountGroupShareIndividual Model.
  class AccountGroupShareIndividual < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [FilterCriteriaAccountGroupShare]
    attr_accessor :filter_criteria

    # TODO: Write general description for this method
    # @return [ConditionAccountGroupShare]
    attr_accessor :condition

    # TODO: Write general description for this method
    # @return [ActionAccountGroupShare]
    attr_accessor :action

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['filter_criteria'] = 'filterCriteria'
      @_hash['condition'] = 'condition'
      @_hash['action'] = 'action'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        filter_criteria
        condition
        action
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(filter_criteria = SKIP,
                   condition = SKIP,
                   action = SKIP)
      @filter_criteria = filter_criteria unless filter_criteria == SKIP
      @condition = condition unless condition == SKIP
      @action = action unless action == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      filter_criteria = FilterCriteriaAccountGroupShare.from_hash(hash['filterCriteria']) if
        hash['filterCriteria']
      condition = ConditionAccountGroupShare.from_hash(hash['condition']) if hash['condition']
      action = ActionAccountGroupShare.from_hash(hash['action']) if hash['action']

      # Create object from extracted values.
      AccountGroupShareIndividual.new(filter_criteria,
                                      condition,
                                      action)
    end
  end
end
