# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # GIOSMSSendRequest Model.
  class GIOSMSSendRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_name

    # TODO: Write general description for this method
    # @return [Array[KvPair]]
    attr_accessor :custom_fields

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :data_encoding

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :group_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :service_plan

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :time_to_live

    # TODO: Write general description for this method
    # @return [Array[GIODeviceId]]
    attr_accessor :device_ids

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :sms_message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['custom_fields'] = 'customFields'
      @_hash['data_encoding'] = 'dataEncoding'
      @_hash['group_name'] = 'groupName'
      @_hash['service_plan'] = 'servicePlan'
      @_hash['time_to_live'] = 'timeToLive'
      @_hash['device_ids'] = 'deviceIds'
      @_hash['sms_message'] = 'smsMessage'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        custom_fields
        data_encoding
        group_name
        service_plan
        time_to_live
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_ids = nil, sms_message = nil, account_name = SKIP,
                   custom_fields = SKIP, data_encoding = SKIP,
                   group_name = SKIP, service_plan = SKIP, time_to_live = SKIP)
      @account_name = account_name unless account_name == SKIP
      @custom_fields = custom_fields unless custom_fields == SKIP
      @data_encoding = data_encoding unless data_encoding == SKIP
      @group_name = group_name unless group_name == SKIP
      @service_plan = service_plan unless service_plan == SKIP
      @time_to_live = time_to_live unless time_to_live == SKIP
      @device_ids = device_ids
      @sms_message = sms_message
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      device_ids = nil
      unless hash['deviceIds'].nil?
        device_ids = []
        hash['deviceIds'].each do |structure|
          device_ids << (GIODeviceId.from_hash(structure) if structure)
        end
      end

      device_ids = nil unless hash.key?('deviceIds')
      sms_message = hash.key?('smsMessage') ? hash['smsMessage'] : nil
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      # Parameter is an array, so we need to iterate through it
      custom_fields = nil
      unless hash['customFields'].nil?
        custom_fields = []
        hash['customFields'].each do |structure|
          custom_fields << (KvPair.from_hash(structure) if structure)
        end
      end

      custom_fields = SKIP unless hash.key?('customFields')
      data_encoding = hash.key?('dataEncoding') ? hash['dataEncoding'] : SKIP
      group_name = hash.key?('groupName') ? hash['groupName'] : SKIP
      service_plan = hash.key?('servicePlan') ? hash['servicePlan'] : SKIP
      time_to_live = hash.key?('timeToLive') ? hash['timeToLive'] : SKIP

      # Create object from extracted values.
      GIOSMSSendRequest.new(device_ids,
                            sms_message,
                            account_name,
                            custom_fields,
                            data_encoding,
                            group_name,
                            service_plan,
                            time_to_live)
    end
  end
end