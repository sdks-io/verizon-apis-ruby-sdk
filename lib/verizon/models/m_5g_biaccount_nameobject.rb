# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # M5gBiaccountNameobject Model.
  class M5gBiaccountNameobject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :billing_cycle_end_date

    # TODO: Write general description for this method
    # @return [Array[M5gBiCarrierInformation]]
    attr_accessor :carrier_information

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :connected

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [Array[M5gBikeyValue1]]
    attr_accessor :custom_fields

    # TODO: Write general description for this method
    # @return [Array[M5gBideviceId1]]
    attr_accessor :device_ids

    # TODO: Write general description for this method
    # @return [Array[M5gBikeyValue1]]
    attr_accessor :extended_attributes

    # TODO: Write general description for this method
    # @return [Array[GroupName]]
    attr_accessor :group_names

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :ipaddress

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_activation_by

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_activation_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['billing_cycle_end_date'] = 'billingCycleEndDate'
      @_hash['carrier_information'] = 'carrierInformation'
      @_hash['connected'] = 'connected'
      @_hash['created_at'] = 'createdAt'
      @_hash['custom_fields'] = 'customFields'
      @_hash['device_ids'] = 'deviceIds'
      @_hash['extended_attributes'] = 'extendedAttributes'
      @_hash['group_names'] = 'groupNames'
      @_hash['ipaddress'] = 'ipAddress'
      @_hash['last_activation_by'] = 'lastActivationBy'
      @_hash['last_activation_date'] = 'lastActivationDate'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        billing_cycle_end_date
        carrier_information
        connected
        created_at
        custom_fields
        device_ids
        extended_attributes
        group_names
        ipaddress
        last_activation_by
        last_activation_date
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = SKIP, billing_cycle_end_date = SKIP,
                   carrier_information = SKIP, connected = SKIP,
                   created_at = SKIP, custom_fields = SKIP, device_ids = SKIP,
                   extended_attributes = SKIP, group_names = SKIP,
                   ipaddress = SKIP, last_activation_by = SKIP,
                   last_activation_date = SKIP)
      @account_name = account_name unless account_name == SKIP
      @billing_cycle_end_date = billing_cycle_end_date unless billing_cycle_end_date == SKIP
      @carrier_information = carrier_information unless carrier_information == SKIP
      @connected = connected unless connected == SKIP
      @created_at = created_at unless created_at == SKIP
      @custom_fields = custom_fields unless custom_fields == SKIP
      @device_ids = device_ids unless device_ids == SKIP
      @extended_attributes = extended_attributes unless extended_attributes == SKIP
      @group_names = group_names unless group_names == SKIP
      @ipaddress = ipaddress unless ipaddress == SKIP
      @last_activation_by = last_activation_by unless last_activation_by == SKIP
      @last_activation_date = last_activation_date unless last_activation_date == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      billing_cycle_end_date =
        hash.key?('billingCycleEndDate') ? hash['billingCycleEndDate'] : SKIP
      # Parameter is an array, so we need to iterate through it
      carrier_information = nil
      unless hash['carrierInformation'].nil?
        carrier_information = []
        hash['carrierInformation'].each do |structure|
          carrier_information << (M5gBiCarrierInformation.from_hash(structure) if structure)
        end
      end

      carrier_information = SKIP unless hash.key?('carrierInformation')
      connected = hash.key?('connected') ? hash['connected'] : SKIP
      created_at = hash.key?('createdAt') ? hash['createdAt'] : SKIP
      # Parameter is an array, so we need to iterate through it
      custom_fields = nil
      unless hash['customFields'].nil?
        custom_fields = []
        hash['customFields'].each do |structure|
          custom_fields << (M5gBikeyValue1.from_hash(structure) if structure)
        end
      end

      custom_fields = SKIP unless hash.key?('customFields')
      # Parameter is an array, so we need to iterate through it
      device_ids = nil
      unless hash['deviceIds'].nil?
        device_ids = []
        hash['deviceIds'].each do |structure|
          device_ids << (M5gBideviceId1.from_hash(structure) if structure)
        end
      end

      device_ids = SKIP unless hash.key?('deviceIds')
      # Parameter is an array, so we need to iterate through it
      extended_attributes = nil
      unless hash['extendedAttributes'].nil?
        extended_attributes = []
        hash['extendedAttributes'].each do |structure|
          extended_attributes << (M5gBikeyValue1.from_hash(structure) if structure)
        end
      end

      extended_attributes = SKIP unless hash.key?('extendedAttributes')
      # Parameter is an array, so we need to iterate through it
      group_names = nil
      unless hash['groupNames'].nil?
        group_names = []
        hash['groupNames'].each do |structure|
          group_names << (GroupName.from_hash(structure) if structure)
        end
      end

      group_names = SKIP unless hash.key?('groupNames')
      ipaddress = hash.key?('ipAddress') ? hash['ipAddress'] : SKIP
      last_activation_by =
        hash.key?('lastActivationBy') ? hash['lastActivationBy'] : SKIP
      last_activation_date =
        hash.key?('lastActivationDate') ? hash['lastActivationDate'] : SKIP

      # Create object from extracted values.
      M5gBiaccountNameobject.new(account_name,
                                 billing_cycle_end_date,
                                 carrier_information,
                                 connected,
                                 created_at,
                                 custom_fields,
                                 device_ids,
                                 extended_attributes,
                                 group_names,
                                 ipaddress,
                                 last_activation_by,
                                 last_activation_date)
    end
  end
end