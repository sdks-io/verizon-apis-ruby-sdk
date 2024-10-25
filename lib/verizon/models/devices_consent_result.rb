# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DevicesConsentResult Model.
  class DevicesConsentResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account identifier in "##########-#####".
    # @return [String]
    attr_accessor :account_name

    # Exclude all devices or not?
    # @return [TrueClass | FalseClass]
    attr_accessor :all_device

    # Are there more devices to retrieve or not?
    # @return [TrueClass | FalseClass]
    attr_accessor :has_more_data

    # Total number of excluded devices in the account.
    # @return [Integer]
    attr_accessor :total_count

    # Last update time.
    # @return [String]
    attr_accessor :update_time

    # Device ID list.
    # @return [Array[String]]
    attr_accessor :exclusion

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['all_device'] = 'allDevice'
      @_hash['has_more_data'] = 'hasMoreData'
      @_hash['total_count'] = 'totalCount'
      @_hash['update_time'] = 'updateTime'
      @_hash['exclusion'] = 'exclusion'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        all_device
        has_more_data
        total_count
        update_time
        exclusion
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = SKIP, all_device = SKIP, has_more_data = SKIP,
                   total_count = SKIP, update_time = SKIP, exclusion = SKIP)
      @account_name = account_name unless account_name == SKIP
      @all_device = all_device unless all_device == SKIP
      @has_more_data = has_more_data unless has_more_data == SKIP
      @total_count = total_count unless total_count == SKIP
      @update_time = update_time unless update_time == SKIP
      @exclusion = exclusion unless exclusion == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      all_device = hash.key?('allDevice') ? hash['allDevice'] : SKIP
      has_more_data = hash.key?('hasMoreData') ? hash['hasMoreData'] : SKIP
      total_count = hash.key?('totalCount') ? hash['totalCount'] : SKIP
      update_time = hash.key?('updateTime') ? hash['updateTime'] : SKIP
      exclusion = hash.key?('exclusion') ? hash['exclusion'] : SKIP

      # Create object from extracted values.
      DevicesConsentResult.new(account_name,
                               all_device,
                               has_more_data,
                               total_count,
                               update_time,
                               exclusion)
    end
  end
end
