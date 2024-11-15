# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # The transaction ID of the request that you want to cancel, from the POST
  # /devicelocations synchronus response.
  class ConsentTransactionID < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :transaction_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_id'] = 'transactionId'
      @_hash['status'] = 'status'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        transaction_id
        status
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(transaction_id = SKIP, status = SKIP)
      @transaction_id = transaction_id unless transaction_id == SKIP
      @status = status unless status == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_id = hash.key?('transactionId') ? hash['transactionId'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP

      # Create object from extracted values.
      ConsentTransactionID.new(transaction_id,
                               status)
    end
  end
end
