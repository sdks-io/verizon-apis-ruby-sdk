# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # PromoAlert Model.
  class PromoAlert < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ReadySimServicePlan]]
    attr_accessor :filter_criteria

    # TODO: Write general description for this method
    # @return [Array[Keyschunk2]]
    attr_accessor :condition

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :enable_promo_exp

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['filter_criteria'] = 'filterCriteria'
      @_hash['condition'] = 'condition'
      @_hash['enable_promo_exp'] = 'enablePromoExp'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        filter_criteria
        condition
        enable_promo_exp
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(filter_criteria = SKIP, condition = SKIP,
                   enable_promo_exp = SKIP)
      @filter_criteria = filter_criteria unless filter_criteria == SKIP
      @condition = condition unless condition == SKIP
      @enable_promo_exp = enable_promo_exp unless enable_promo_exp == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      filter_criteria = nil
      unless hash['filterCriteria'].nil?
        filter_criteria = []
        hash['filterCriteria'].each do |structure|
          filter_criteria << (ReadySimServicePlan.from_hash(structure) if structure)
        end
      end

      filter_criteria = SKIP unless hash.key?('filterCriteria')
      # Parameter is an array, so we need to iterate through it
      condition = nil
      unless hash['condition'].nil?
        condition = []
        hash['condition'].each do |structure|
          condition << (Keyschunk2.from_hash(structure) if structure)
        end
      end

      condition = SKIP unless hash.key?('condition')
      enable_promo_exp =
        hash.key?('enablePromoExp') ? hash['enablePromoExp'] : SKIP

      # Create object from extracted values.
      PromoAlert.new(filter_criteria,
                     condition,
                     enable_promo_exp)
    end
  end
end
