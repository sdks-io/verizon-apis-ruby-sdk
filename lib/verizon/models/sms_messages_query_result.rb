# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Response to SMS messages sent by all M2M devices associated with a billing
  # account.
  class SMSMessagesQueryResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # False for a status 200 response.True for a status 202 response, indicating
    # that there is more data to be retrieved.
    # @return [TrueClass | FalseClass]
    attr_accessor :has_more_data

    # An array of up to 100 SMS messages that were sent by devices in the
    # account.
    # @return [Array[SMSMessage]]
    attr_accessor :messages

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['has_more_data'] = 'hasMoreData'
      @_hash['messages'] = 'messages'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        has_more_data
        messages
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(has_more_data = SKIP, messages = SKIP)
      @has_more_data = has_more_data unless has_more_data == SKIP
      @messages = messages unless messages == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      has_more_data = hash.key?('hasMoreData') ? hash['hasMoreData'] : SKIP
      # Parameter is an array, so we need to iterate through it
      messages = nil
      unless hash['messages'].nil?
        messages = []
        hash['messages'].each do |structure|
          messages << (SMSMessage.from_hash(structure) if structure)
        end
      end

      messages = SKIP unless hash.key?('messages')

      # Create object from extracted values.
      SMSMessagesQueryResult.new(has_more_data,
                                 messages)
    end
  end
end