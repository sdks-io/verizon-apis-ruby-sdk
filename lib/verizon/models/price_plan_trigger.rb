# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # PricePlanTrigger Model.
  class PricePlanTrigger < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [AccountGroupShare]
    attr_accessor :account_group_share

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_group_share'] = 'accountGroupShare'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_group_share
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_group_share = SKIP)
      @account_group_share = account_group_share unless account_group_share == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_group_share = AccountGroupShare.from_hash(hash['accountGroupShare']) if
        hash['accountGroupShare']

      # Create object from extracted values.
      PricePlanTrigger.new(account_group_share)
    end
  end
end
