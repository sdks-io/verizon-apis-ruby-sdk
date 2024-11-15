# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Registered callback listener.
  class CallbackRegistered < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The billing account number for which callback messages will be sent.
    # @return [String]
    attr_accessor :account_name

    # The name of the callback service, which identifies the type and format of
    # messages that will be sent to the registered URL.
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['name'] = 'name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = nil, name = nil)
      @account_name = account_name
      @name = name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      name = hash.key?('name') ? hash['name'] : nil

      # Create object from extracted values.
      CallbackRegistered.new(account_name,
                             name)
    end
  end
end
