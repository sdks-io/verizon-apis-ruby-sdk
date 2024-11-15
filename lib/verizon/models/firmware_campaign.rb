# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Firmware upgrade information.
  class FirmwareCampaign < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Upgrade identifier.
    # @return [String]
    attr_accessor :id

    # Account identifier.
    # @return [String]
    attr_accessor :account_name

    # Campaign name.
    # @return [String]
    attr_accessor :campaign_name

    # Firmware name (for firmware upgrade only).
    # @return [String]
    attr_accessor :firmware_name

    # Old firmware version (for firmware upgrade only).
    # @return [String]
    attr_accessor :firmware_from

    # New firmware version (for firmware upgrade only).
    # @return [String]
    attr_accessor :firmware_to

    # Available values: LWM2M.
    # @return [String]
    attr_accessor :protocol

    # Available values: LWM2M.
    # @return [String]
    attr_accessor :make

    # Available values: LWM2M.
    # @return [String]
    attr_accessor :model

    # Campaign start date.
    # @return [Date]
    attr_accessor :start_date

    # Campaign end date.
    # @return [Date]
    attr_accessor :end_date

    # List of allowed campaign time windows.
    # @return [Array[V3TimeWindow]]
    attr_accessor :campaign_time_window_list

    # Campaign status.
    # @return [String]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['account_name'] = 'accountName'
      @_hash['campaign_name'] = 'campaignName'
      @_hash['firmware_name'] = 'firmwareName'
      @_hash['firmware_from'] = 'firmwareFrom'
      @_hash['firmware_to'] = 'firmwareTo'
      @_hash['protocol'] = 'protocol'
      @_hash['make'] = 'make'
      @_hash['model'] = 'model'
      @_hash['start_date'] = 'startDate'
      @_hash['end_date'] = 'endDate'
      @_hash['campaign_time_window_list'] = 'campaignTimeWindowList'
      @_hash['status'] = 'status'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        campaign_name
        firmware_name
        campaign_time_window_list
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = nil, account_name = nil, firmware_from = nil,
                   firmware_to = nil, protocol = 'LWM2M', make = nil,
                   model = nil, start_date = nil, end_date = nil, status = nil,
                   campaign_name = SKIP, firmware_name = SKIP,
                   campaign_time_window_list = SKIP)
      @id = id
      @account_name = account_name
      @campaign_name = campaign_name unless campaign_name == SKIP
      @firmware_name = firmware_name unless firmware_name == SKIP
      @firmware_from = firmware_from
      @firmware_to = firmware_to
      @protocol = protocol
      @make = make
      @model = model
      @start_date = start_date
      @end_date = end_date
      unless campaign_time_window_list == SKIP
        @campaign_time_window_list =
          campaign_time_window_list
      end
      @status = status
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      firmware_from = hash.key?('firmwareFrom') ? hash['firmwareFrom'] : nil
      firmware_to = hash.key?('firmwareTo') ? hash['firmwareTo'] : nil
      protocol = hash['protocol'] ||= 'LWM2M'
      make = hash.key?('make') ? hash['make'] : nil
      model = hash.key?('model') ? hash['model'] : nil
      start_date = hash.key?('startDate') ? hash['startDate'] : nil
      end_date = hash.key?('endDate') ? hash['endDate'] : nil
      status = hash.key?('status') ? hash['status'] : nil
      campaign_name = hash.key?('campaignName') ? hash['campaignName'] : SKIP
      firmware_name = hash.key?('firmwareName') ? hash['firmwareName'] : SKIP
      # Parameter is an array, so we need to iterate through it
      campaign_time_window_list = nil
      unless hash['campaignTimeWindowList'].nil?
        campaign_time_window_list = []
        hash['campaignTimeWindowList'].each do |structure|
          campaign_time_window_list << (V3TimeWindow.from_hash(structure) if structure)
        end
      end

      campaign_time_window_list = SKIP unless hash.key?('campaignTimeWindowList')

      # Create object from extracted values.
      FirmwareCampaign.new(id,
                           account_name,
                           firmware_from,
                           firmware_to,
                           protocol,
                           make,
                           model,
                           start_date,
                           end_date,
                           status,
                           campaign_name,
                           firmware_name,
                           campaign_time_window_list)
    end
  end
end