# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Specifies the callback service that is being subscribed to and the URL where
  # the listening service is running.
  class CallbackRegistrationRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The name of the billing account for which callback messages will be sent.
    # Format: "##########-#####".
    # @return [String]
    attr_accessor :account_name

    # The name of the callback service, which identifies the type and format of
    # messages that will be sent to the registered URL.
    # @return [String]
    attr_accessor :service_name

    # The URL for your web server.
    # @return [String]
    attr_accessor :endpoint

    # Your HTTP headers.
    # @return [Object]
    attr_accessor :http_headers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['service_name'] = 'serviceName'
      @_hash['endpoint'] = 'endpoint'
      @_hash['http_headers'] = 'httpHeaders'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        http_headers
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = nil, service_name = nil, endpoint = nil,
                   http_headers = SKIP)
      @account_name = account_name
      @service_name = service_name
      @endpoint = endpoint
      @http_headers = http_headers unless http_headers == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      service_name = hash.key?('serviceName') ? hash['serviceName'] : nil
      endpoint = hash.key?('endpoint') ? hash['endpoint'] : nil
      http_headers = hash.key?('httpHeaders') ? hash['httpHeaders'] : SKIP

      # Create object from extracted values.
      CallbackRegistrationRequest.new(account_name,
                                      service_name,
                                      endpoint,
                                      http_headers)
    end
  end
end