# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # CreateTriggerRequestOptions Model.
  class CreateTriggerRequestOptions < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Trigger name.
    # @return [String]
    attr_accessor :name

    # This is the value to use in the request body to detect anomalous
    # behaivior. The values in this table will only be relevant when this
    # parameter is set to this value.
    # @return [String]
    attr_accessor :trigger_category

    # Account name.
    # @return [String]
    attr_accessor :account_name

    # The details of the UsageAnomaly trigger.
    # @return [AnomalyTriggerRequest]
    attr_accessor :anomaly_trigger_request

    # The notification details of the trigger.
    # @return [TriggerNotification]
    attr_accessor :notification

    # Indicates anomaly detection is active<br />True - Anomaly detection is
    # active.<br />False - Anomaly detection is not active.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['trigger_category'] = 'triggerCategory'
      @_hash['account_name'] = 'accountName'
      @_hash['anomaly_trigger_request'] = 'anomalyTriggerRequest'
      @_hash['notification'] = 'notification'
      @_hash['active'] = 'active'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        trigger_category
        account_name
        anomaly_trigger_request
        notification
        active
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP,
                   trigger_category = SKIP,
                   account_name = SKIP,
                   anomaly_trigger_request = SKIP,
                   notification = SKIP,
                   active = SKIP)
      @name = name unless name == SKIP
      @trigger_category = trigger_category unless trigger_category == SKIP
      @account_name = account_name unless account_name == SKIP
      @anomaly_trigger_request = anomaly_trigger_request unless anomaly_trigger_request == SKIP
      @notification = notification unless notification == SKIP
      @active = active unless active == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      trigger_category =
        hash.key?('triggerCategory') ? hash['triggerCategory'] : SKIP
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      anomaly_trigger_request = AnomalyTriggerRequest.from_hash(hash['anomalyTriggerRequest']) if
        hash['anomalyTriggerRequest']
      notification = TriggerNotification.from_hash(hash['notification']) if hash['notification']
      active = hash.key?('active') ? hash['active'] : SKIP

      # Create object from extracted values.
      CreateTriggerRequestOptions.new(name,
                                      trigger_category,
                                      account_name,
                                      anomaly_trigger_request,
                                      notification,
                                      active)
    end
  end
end
