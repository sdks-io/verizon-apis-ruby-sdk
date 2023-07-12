# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Location information for up to 1,000 devices.
  class LocationReport < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Device location information.
    # @return [Array[Location]]
    attr_accessor :dev_location_list

    # True if there are more device locations to retrieve.
    # @return [TrueClass | FalseClass]
    attr_accessor :has_more_data

    # The zero-based number of the first record to return. Set startIndex=0 for
    # the first request. If there are more than 1,000 devices to be returned
    # (hasMoreData=true), set startIndex=1000 for the second request, 2000 for
    # the third request, etc.
    # @return [String]
    attr_accessor :start_index

    # The total number of devices in the original request and in the report.
    # @return [Integer]
    attr_accessor :total_count

    # The transaction ID of the report.
    # @return [String]
    attr_accessor :txid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['dev_location_list'] = 'devLocationList'
      @_hash['has_more_data'] = 'hasMoreData'
      @_hash['start_index'] = 'startIndex'
      @_hash['total_count'] = 'totalCount'
      @_hash['txid'] = 'txid'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        dev_location_list
        has_more_data
        start_index
        total_count
        txid
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(dev_location_list = SKIP,
                   has_more_data = SKIP,
                   start_index = SKIP,
                   total_count = SKIP,
                   txid = SKIP)
      @dev_location_list = dev_location_list unless dev_location_list == SKIP
      @has_more_data = has_more_data unless has_more_data == SKIP
      @start_index = start_index unless start_index == SKIP
      @total_count = total_count unless total_count == SKIP
      @txid = txid unless txid == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      dev_location_list = nil
      unless hash['devLocationList'].nil?
        dev_location_list = []
        hash['devLocationList'].each do |structure|
          dev_location_list << (Location.from_hash(structure) if structure)
        end
      end

      dev_location_list = SKIP unless hash.key?('devLocationList')
      has_more_data = hash.key?('hasMoreData') ? hash['hasMoreData'] : SKIP
      start_index = hash.key?('startIndex') ? hash['startIndex'] : SKIP
      total_count = hash.key?('totalCount') ? hash['totalCount'] : SKIP
      txid = hash.key?('txid') ? hash['txid'] : SKIP

      # Create object from extracted values.
      LocationReport.new(dev_location_list,
                         has_more_data,
                         start_index,
                         total_count,
                         txid)
    end
  end
end
