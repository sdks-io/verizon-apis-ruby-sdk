# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # AccountConsentUpdate Model.
  class AccountConsentUpdate < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The numeric name of the account, including leading zeros.
    # @return [String]
    attr_accessor :account_name

    # The consent setting to use for all the devices in the account.
    # @return [Integer]
    attr_accessor :all_device_consent

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['all_device_consent'] = 'allDeviceConsent'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        all_device_consent
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = SKIP, all_device_consent = SKIP)
      @account_name = account_name unless account_name == SKIP
      @all_device_consent = all_device_consent unless all_device_consent == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      all_device_consent =
        hash.key?('allDeviceConsent') ? hash['allDeviceConsent'] : SKIP

      # Create object from extracted values.
      AccountConsentUpdate.new(account_name,
                               all_device_consent)
    end
  end
end