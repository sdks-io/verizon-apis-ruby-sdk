# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Returns information about a specified account.
  class Account < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The name of the account.
    # @return [String]
    attr_accessor :account_name

    # The billing number of the account.
    # @return [String]
    attr_accessor :account_number

    # The name of the organization that the account is part of.
    # @return [String]
    attr_accessor :organization_name

    # True if devices can be added to the account and activated with a single
    # request. False if devices must be added to the account before they can be
    # activated.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_provisioning_allowed

    # The names of all carriers for the account.
    # @return [Array[String]]
    attr_accessor :carriers

    # The names of features that are enabled for the account.
    # @return [Array[String]]
    attr_accessor :features

    # Array of IP pools that are available to the account.
    # @return [Array[IPPool]]
    attr_accessor :i_p_pools

    # Array of service plans that are available to the account.
    # @return [Array[ServicePlan]]
    attr_accessor :service_plans

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['account_number'] = 'accountNumber'
      @_hash['organization_name'] = 'organizationName'
      @_hash['is_provisioning_allowed'] = 'isProvisioningAllowed'
      @_hash['carriers'] = 'carriers'
      @_hash['features'] = 'features'
      @_hash['i_p_pools'] = 'iPPools'
      @_hash['service_plans'] = 'servicePlans'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        account_number
        organization_name
        is_provisioning_allowed
        carriers
        features
        i_p_pools
        service_plans
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = SKIP, account_number = SKIP,
                   organization_name = SKIP, is_provisioning_allowed = SKIP,
                   carriers = SKIP, features = SKIP, i_p_pools = SKIP,
                   service_plans = SKIP)
      @account_name = account_name unless account_name == SKIP
      @account_number = account_number unless account_number == SKIP
      @organization_name = organization_name unless organization_name == SKIP
      @is_provisioning_allowed = is_provisioning_allowed unless is_provisioning_allowed == SKIP
      @carriers = carriers unless carriers == SKIP
      @features = features unless features == SKIP
      @i_p_pools = i_p_pools unless i_p_pools == SKIP
      @service_plans = service_plans unless service_plans == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      account_number = hash.key?('accountNumber') ? hash['accountNumber'] : SKIP
      organization_name =
        hash.key?('organizationName') ? hash['organizationName'] : SKIP
      is_provisioning_allowed =
        hash.key?('isProvisioningAllowed') ? hash['isProvisioningAllowed'] : SKIP
      carriers = hash.key?('carriers') ? hash['carriers'] : SKIP
      features = hash.key?('features') ? hash['features'] : SKIP
      # Parameter is an array, so we need to iterate through it
      i_p_pools = nil
      unless hash['iPPools'].nil?
        i_p_pools = []
        hash['iPPools'].each do |structure|
          i_p_pools << (IPPool.from_hash(structure) if structure)
        end
      end

      i_p_pools = SKIP unless hash.key?('iPPools')
      # Parameter is an array, so we need to iterate through it
      service_plans = nil
      unless hash['servicePlans'].nil?
        service_plans = []
        hash['servicePlans'].each do |structure|
          service_plans << (ServicePlan.from_hash(structure) if structure)
        end
      end

      service_plans = SKIP unless hash.key?('servicePlans')

      # Create object from extracted values.
      Account.new(account_name,
                  account_number,
                  organization_name,
                  is_provisioning_allowed,
                  carriers,
                  features,
                  i_p_pools,
                  service_plans)
    end
  end
end
