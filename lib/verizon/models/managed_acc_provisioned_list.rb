# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ManagedAccProvisionedList Model.
  class ManagedAccProvisionedList < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account name
    # @return [String]
    attr_accessor :id

    # Transaction identifier
    # @return [String]
    attr_accessor :txid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['txid'] = 'txid'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        txid
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP,
                   txid = SKIP)
      @id = id unless id == SKIP
      @txid = txid unless txid == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      txid = hash.key?('txid') ? hash['txid'] : SKIP

      # Create object from extracted values.
      ManagedAccProvisionedList.new(id,
                                    txid)
    end
  end
end
