# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # PlacementIntents Model.
  class PlacementIntents < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :is_placement_at_launch_enabled

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :group_id

    # TODO: Write general description for this method
    # @return [Array[IntentChainItem]]
    attr_accessor :intent_chain

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['is_placement_at_launch_enabled'] = 'isPlacementAtLaunchEnabled'
      @_hash['group_id'] = 'groupId'
      @_hash['intent_chain'] = 'intentChain'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        is_placement_at_launch_enabled
        group_id
        intent_chain
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(is_placement_at_launch_enabled = false,
                   group_id = SKIP,
                   intent_chain = SKIP)
      unless is_placement_at_launch_enabled == SKIP
        @is_placement_at_launch_enabled =
          is_placement_at_launch_enabled
      end
      @group_id = group_id unless group_id == SKIP
      @intent_chain = intent_chain unless intent_chain == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      is_placement_at_launch_enabled =
        hash['isPlacementAtLaunchEnabled'] ||= false
      group_id = hash.key?('groupId') ? hash['groupId'] : SKIP
      # Parameter is an array, so we need to iterate through it
      intent_chain = nil
      unless hash['intentChain'].nil?
        intent_chain = []
        hash['intentChain'].each do |structure|
          intent_chain << (IntentChainItem.from_hash(structure) if structure)
        end
      end

      intent_chain = SKIP unless hash.key?('intentChain')

      # Create object from extracted values.
      PlacementIntents.new(is_placement_at_launch_enabled,
                           group_id,
                           intent_chain)
    end
  end
end