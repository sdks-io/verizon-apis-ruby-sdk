# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Response to query the most recent data for Key Performance Indicators (KPIs)
  # like network availability, MEC hostnames and more.
  class MECPerformanceMetrics < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Success or Failed.
    # @return [String]
    attr_accessor :query_status

    # Timestamp of the query's start, format:mm/dd/yyyy,hr:min:sec.
    # @return [String]
    attr_accessor :start

    # Timestamp of the query's end , format:mm/dd/yyyy, hr:min:sec.
    # @return [String]
    attr_accessor :mend

    # MEC performance query result.
    # @return [Array[MECPerformanceQueryResult]]
    attr_accessor :query_result

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['query_status'] = 'QueryStatus'
      @_hash['start'] = 'Start'
      @_hash['mend'] = 'End'
      @_hash['query_result'] = 'QueryResult'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        query_status
        start
        mend
        query_result
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(query_status = SKIP, start = SKIP, mend = SKIP,
                   query_result = SKIP)
      @query_status = query_status unless query_status == SKIP
      @start = start unless start == SKIP
      @mend = mend unless mend == SKIP
      @query_result = query_result unless query_result == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      query_status = hash.key?('QueryStatus') ? hash['QueryStatus'] : SKIP
      start = hash.key?('Start') ? hash['Start'] : SKIP
      mend = hash.key?('End') ? hash['End'] : SKIP
      # Parameter is an array, so we need to iterate through it
      query_result = nil
      unless hash['QueryResult'].nil?
        query_result = []
        hash['QueryResult'].each do |structure|
          query_result << (MECPerformanceQueryResult.from_hash(structure) if structure)
        end
      end

      query_result = SKIP unless hash.key?('QueryResult')

      # Create object from extracted values.
      MECPerformanceMetrics.new(query_status,
                                start,
                                mend,
                                query_result)
    end
  end
end
