# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # AsynchronousLocationRequestResult Model.
  class AsynchronousLocationRequestResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The transaction ID of the report.
    # @return [String]
    attr_accessor :txid

    # Status of the report.
    # @return [ReportStatusEnum]
    attr_accessor :status

    # Estimated number of minutes required to complete the report.
    # @return [String]
    attr_accessor :estimated_duration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['txid'] = 'txid'
      @_hash['status'] = 'status'
      @_hash['estimated_duration'] = 'estimatedDuration'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        txid
        status
        estimated_duration
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(txid = SKIP, status = SKIP, estimated_duration = SKIP)
      @txid = txid unless txid == SKIP
      @status = status unless status == SKIP
      @estimated_duration = estimated_duration unless estimated_duration == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      txid = hash.key?('txid') ? hash['txid'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      estimated_duration =
        hash.key?('estimatedDuration') ? hash['estimatedDuration'] : SKIP

      # Create object from extracted values.
      AsynchronousLocationRequestResult.new(txid,
                                            status,
                                            estimated_duration)
    end
  end
end