# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Verizon
  # Request to update service plan.
  class ServicePlanUpdateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The service plan code that you want to assign to all specified devices.
    # @return [String]
    attr_accessor :service_plan

    # The name of a billing account.
    # @return [String]
    attr_accessor :account_name

    # The name of a service plan, if you want to only include devices that have
    # that service plan.
    # @return [String]
    attr_accessor :current_service_plan

    # Custom field names and values, if you want to only include devices that
    # have matching values.
    # @return [Array[CustomFields]]
    attr_accessor :custom_fields

    # A list of the devices that you want to change, specified by device
    # identifier.
    # @return [Array[AccountDeviceList]]
    attr_accessor :devices

    # The name of a device group, if you want to restore service for all devices
    # in that group.
    # @return [String]
    attr_accessor :group_name

    # The name of a device group, if you want to restore service for all devices
    # in that group.
    # @return [String]
    attr_accessor :carrier_ip_pool_name

    # The name of a device group, if you want to restore service for all devices
    # in that group.
    # @return [DateTime]
    attr_accessor :take_effect

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['service_plan'] = 'servicePlan'
      @_hash['account_name'] = 'accountName'
      @_hash['current_service_plan'] = 'currentServicePlan'
      @_hash['custom_fields'] = 'customFields'
      @_hash['devices'] = 'devices'
      @_hash['group_name'] = 'groupName'
      @_hash['carrier_ip_pool_name'] = 'carrierIpPoolName'
      @_hash['take_effect'] = 'takeEffect'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        current_service_plan
        custom_fields
        devices
        group_name
        carrier_ip_pool_name
        take_effect
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(service_plan = nil, account_name = SKIP,
                   current_service_plan = SKIP, custom_fields = SKIP,
                   devices = SKIP, group_name = SKIP,
                   carrier_ip_pool_name = SKIP, take_effect = SKIP)
      @service_plan = service_plan
      @account_name = account_name unless account_name == SKIP
      @current_service_plan = current_service_plan unless current_service_plan == SKIP
      @custom_fields = custom_fields unless custom_fields == SKIP
      @devices = devices unless devices == SKIP
      @group_name = group_name unless group_name == SKIP
      @carrier_ip_pool_name = carrier_ip_pool_name unless carrier_ip_pool_name == SKIP
      @take_effect = take_effect unless take_effect == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      service_plan = hash.key?('servicePlan') ? hash['servicePlan'] : nil
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      current_service_plan =
        hash.key?('currentServicePlan') ? hash['currentServicePlan'] : SKIP
      # Parameter is an array, so we need to iterate through it
      custom_fields = nil
      unless hash['customFields'].nil?
        custom_fields = []
        hash['customFields'].each do |structure|
          custom_fields << (CustomFields.from_hash(structure) if structure)
        end
      end

      custom_fields = SKIP unless hash.key?('customFields')
      # Parameter is an array, so we need to iterate through it
      devices = nil
      unless hash['devices'].nil?
        devices = []
        hash['devices'].each do |structure|
          devices << (AccountDeviceList.from_hash(structure) if structure)
        end
      end

      devices = SKIP unless hash.key?('devices')
      group_name = hash.key?('groupName') ? hash['groupName'] : SKIP
      carrier_ip_pool_name =
        hash.key?('carrierIpPoolName') ? hash['carrierIpPoolName'] : SKIP
      take_effect = if hash.key?('takeEffect')
                      (DateTimeHelper.from_rfc3339(hash['takeEffect']) if hash['takeEffect'])
                    else
                      SKIP
                    end

      # Create object from extracted values.
      ServicePlanUpdateRequest.new(service_plan,
                                   account_name,
                                   current_service_plan,
                                   custom_fields,
                                   devices,
                                   group_name,
                                   carrier_ip_pool_name,
                                   take_effect)
    end

    def to_custom_take_effect
      DateTimeHelper.to_rfc3339(take_effect)
    end
  end
end
