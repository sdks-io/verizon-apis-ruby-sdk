# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Update Trigger Request
  class UpdateTriggerV2Request < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :trigger_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :trigger_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :ecpd_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :device_group_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :trigger_category

    # TODO: Write general description for this method
    # @return [PricePlanTrigger]
    attr_accessor :price_plan_trigger

    # TODO: Write general description for this method
    # @return [Notification]
    attr_accessor :notification

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['trigger_id'] = 'triggerId'
      @_hash['trigger_name'] = 'triggerName'
      @_hash['ecpd_id'] = 'ecpdId'
      @_hash['device_group_name'] = 'deviceGroupName'
      @_hash['trigger_category'] = 'triggerCategory'
      @_hash['price_plan_trigger'] = 'pricePlanTrigger'
      @_hash['notification'] = 'notification'
      @_hash['active'] = 'active'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        trigger_id
        trigger_name
        ecpd_id
        device_group_name
        trigger_category
        price_plan_trigger
        notification
        active
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(trigger_id = SKIP, trigger_name = SKIP, ecpd_id = SKIP,
                   device_group_name = SKIP, trigger_category = SKIP,
                   price_plan_trigger = SKIP, notification = SKIP,
                   active = SKIP)
      @trigger_id = trigger_id unless trigger_id == SKIP
      @trigger_name = trigger_name unless trigger_name == SKIP
      @ecpd_id = ecpd_id unless ecpd_id == SKIP
      @device_group_name = device_group_name unless device_group_name == SKIP
      @trigger_category = trigger_category unless trigger_category == SKIP
      @price_plan_trigger = price_plan_trigger unless price_plan_trigger == SKIP
      @notification = notification unless notification == SKIP
      @active = active unless active == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      trigger_id = hash.key?('triggerId') ? hash['triggerId'] : SKIP
      trigger_name = hash.key?('triggerName') ? hash['triggerName'] : SKIP
      ecpd_id = hash.key?('ecpdId') ? hash['ecpdId'] : SKIP
      device_group_name =
        hash.key?('deviceGroupName') ? hash['deviceGroupName'] : SKIP
      trigger_category =
        hash.key?('triggerCategory') ? hash['triggerCategory'] : SKIP
      price_plan_trigger = PricePlanTrigger.from_hash(hash['pricePlanTrigger']) if
        hash['pricePlanTrigger']
      notification = Notification.from_hash(hash['notification']) if hash['notification']
      active = hash.key?('active') ? hash['active'] : SKIP

      # Create object from extracted values.
      UpdateTriggerV2Request.new(trigger_id,
                                 trigger_name,
                                 ecpd_id,
                                 device_group_name,
                                 trigger_category,
                                 price_plan_trigger,
                                 notification,
                                 active)
    end
  end
end